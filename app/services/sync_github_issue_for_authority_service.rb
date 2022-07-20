# typed: strict
# frozen_string_literal: true

require "graphql/client"
require "graphql/client/http"

# For a broken authority create a Github issue. When the authority is working
# again tag the Github issue as "probably fixed"
class SyncGithubIssueForAuthorityService
  extend T::Sig

  # include GeneratedUrlHelpers
  # See https://sorbet.org/docs/error-reference#4002
  T.unsafe(self).include Rails.application.routes.url_helpers
  include AuthoritiesHelper

  # First setup all the graphql stuff
  HTTP = GraphQL::Client::HTTP.new("https://api.github.com/graphql") do
    def headers(_context)
      { Authorization: "bearer #{ENV['GITHUB_PERSONAL_ACCESS_TOKEN']}" }
    end
  end

  # TODO: Put the schema file in a sensible place
  SCHEMA_PATH = "SCHEMA.json"
  SCHEMA = if File.exist?(SCHEMA_PATH)
             GraphQL::Client.load_SCHEMA(SCHEMA_PATH)
           else
             schema = GraphQL::Client.load_SCHEMA(HTTP)
             GraphQL::Client.dump_SCHEMA(HTTP, SCHEMA_PATH)
             schema
           end

  CLIENT = GraphQL::Client.new(schema: SCHEMA, execute: HTTP)

  # First find the project we want to attach the issue to
  SHOW_PROJECT_QUERY = CLIENT.parse <<-GRAPHQL
    query($login: String!, $number: Int!) {
      organization(login: $login) {
        projectV2(number: $number) {
          id
          fields(first: 20) {
            nodes {
              ... on ProjectV2FieldCommon {
                id
                name
              }
              ... on ProjectV2SingleSelectField {
                options {
                  name
                }
              }
            }
          }
        }
      }
    }
  GRAPHQL

  ADD_ISSUE_TO_PROJECT_MUTATION = CLIENT.parse <<-GRAPHQL
    mutation($input: AddProjectV2ItemByIdInput!) {
      addProjectV2ItemById(input: $input) {
        item {
          id
        }
      }
    }
  GRAPHQL

  UPDATE_FIELD_VALUE_MUTATION = CLIENT.parse <<-GRAPHQL
    mutation($input: UpdateProjectV2ItemFieldValueInput!) {
      updateProjectV2ItemFieldValue(input: $input)
    }
  GRAPHQL

  # The repository in which we want the issues created
  REPO = T.let(
    Rails.env.production? ? "planningalerts-scrapers/issues" : "planningalerts-scrapers/test-issues",
    String
  )

  PROBABLY_FIXED_LABEL_NAME = "probably fixed"

  sig { params(logger: Logger, authority: Authority).void }
  def self.call(logger:, authority:)
    new.call(logger: logger, authority: authority)
  end

  sig { params(logger: Logger, authority: Authority).void }
  def call(logger:, authority:)
    client = Octokit::Client.new(access_token: ENV["GITHUB_PERSONAL_ACCESS_TOKEN"])

    issue = authority.github_issue
    latest_date = authority.date_last_new_application_scraped
    # We don't want to create issues on newly created authorities that have
    # not yet scraped anything
    if authority.broken? && latest_date && (issue.nil? || issue.closed?(client))
      logger.info "Creating GitHub issue for broken authority #{authority.full_name}"
      issue = client.create_issue(REPO, title(authority, latest_date), body(authority))
      authority.create_github_issue!(
        github_repo: REPO,
        github_number: issue.number
      )
      # We also want to attach the issue to a project with some custom fields which makes it
      # easier to order / prioritise the work of fixing the scrapers
      attach_issue_to_project(issue_id: issue.node_id, authority: authority, latest_date: latest_date)
    elsif !authority.broken? && issue && !issue.closed?(client)
      logger.info "Authority #{authority.full_name} is fixed but github issue is still open. So labelling."
      issue.add_label!(client, PROBABLY_FIXED_LABEL_NAME)
    end
  end

  def attach_issue_to_project(issue_id:, authority:, latest_date:)
    # TODO: Make this different for development and production
    result = CLIENT.query(SHOW_PROJECT_QUERY, variables: { login: "planningalerts-scrapers", number: 4 })
    project_id = result.data.organization.project_v2.id
    fields = result.data.organization.project_v2.fields.nodes

    # Now add the issue to the project
    result = CLIENT.query(ADD_ISSUE_TO_PROJECT_MUTATION, variables: { input: { projectId: project_id, contentId: issue_id } })
    item_id = result.data.add_project_v2_item_by_id.item.id
    # TODO: Check for errors

    # The field that we want to update
    authority_field_id = fields.find { |f| f.name == "Authority" }.id
    latest_date_field_id = fields.find { |f| f.name == "No data received since" }.id
    scraper_field_id = fields.find { |f| f.name == "Scraper (Morph)" }.id
    state_field_id = fields.find { |f| f.name == "State" }.id
    population_field_id = fields.find { |f| f.name == "Population" }.id
    website_field_id = fields.find { |f| f.name == "Website" }.id

    # Update authority field
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: authority_field_id, value: { text: authority.full_name } } })
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: latest_date_field_id, value: { date: latest_date.iso8601 } } })
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: scraper_field_id, value: { text: morph_url(authority) } } })
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: state_field_id, value: { text: authority.state } } })
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: population_field_id, value: { number: authority.population_2017 } } })
    CLIENT.query(UPDATE_FIELD_VALUE_MUTATION, variables: { input: { projectId: project_id, itemId: item_id, fieldId: website_field_id, value: { number: authority.website_url } } })
    # TODO: Check for errors
  end

  sig { params(authority: Authority, latest_date: Time).returns(String) }
  def title(authority, latest_date)
    "#{authority.full_name}: No data received since #{latest_date.strftime('%e %b %Y')}"
  end

  sig { params(authority: Authority).returns(String) }
  def body(authority)
    "This issue has been **automatically** created by PlanningAlerts for " \
      "[#{authority.full_name}](#{authority_url(authority.short_name_encoded, host: ENV['HOST'])})\n\n" \
      "It uses the scraper [#{authority.morph_name}](#{morph_url(authority)})\n\n" \
      "Only close this issue once the authority is working again on PlanningAlerts. " \
      "Otherwise a new issue will just automatically created. Also, if there is " \
      "a duplicate issue close the other one in favour of this one."
  end
end
