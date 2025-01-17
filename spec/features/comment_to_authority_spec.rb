# frozen_string_literal: true

require "spec_helper"

describe "Give feedback" do
  include Devise::Test::IntegrationHelpers

  # In order to affect the outcome of a development application
  # As a citizen
  # I want to send feedback on a development application directly to the planning authority

  it "Giving feedback for an authority without a feedback email" do
    authority = create(:authority, full_name: "Foo")
    application = create(:geocoded_application, id: "1", authority:)
    visit(application_path(application))

    expect(page).to have_content("To comment on this application you will need to go to the original source")
  end

  describe "an authority without a feedback email in the new design" do
    before do
      authority = create(:authority, full_name: "Byron Shire Council")
      application = create(:geocoded_application, id: "1", authority:, date_scraped: Date.new(2023, 1, 1))
      # Note that we're ensuring that the application has a static first_date_scraped and we freeze the current
      # time so that the page should always have the same text on it
      Timecop.freeze(Date.new(2023, 6, 1)) do
        sign_in create(:confirmed_user, name: "Jane Ng")
        visit(application_path(application))
      end
    end

    it "lets the user know what to do instead" do
      expect(page).to have_content("To comment on this application you will need to go to the original source")
    end

    # rubocop:disable RSpec/NoExpectationExample
    it "renders a snapshot for a visual diff", :js do
      page.percy_snapshot("Application authority without feedback email")
    end
    # rubocop:enable RSpec/NoExpectationExample
  end

  it "Getting an error message if the comment form isn’t completed correctly" do
    authority = create(:authority, full_name: "Foo", email: "feedback@foo.gov.au")
    application = create(:geocoded_application, id: "1", authority:)

    sign_in create(:confirmed_user)
    visit(application_path(application))

    fill_in("Your comment", with: "I think this is a really good idea")
    fill_in("Your full name", with: "Matthew Landauer")
    # Don't fill in the address
    click_on("Review and publish")

    expect(page).to have_content("Some of the comment wasn't filled out completely. See below.")
    expect(page).to have_no_content("Now check your email")
  end

  context "when the authority is contactable" do
    let(:application) do
      authority = create(:contactable_authority,
                         full_name: "Byron Shire Council",
                         email: "feedback@foo.gov.au")
      create(:geocoded_application, id: "1", authority:, date_scraped: Date.new(2023, 1, 1))
    end

    describe "accessibility tests in new design", :js do
      before do
        # Note that we're ensuring that the application has a static first_date_scraped and we freeze the current
        # time so that the page should always have the same text on it
        Timecop.freeze(Date.new(2023, 6, 1)) do
          sign_in create(:confirmed_user, name: "Jane Ng")
          visit(application_path(application))
        end
      end

      it "page passes most" do
        expect(page).to be_axe_clean.excluding(".map")
      end

      it "google maps content passes" do
        pending "We have to figure out how to get the aria-labels inside the map and streetview to be different"
        expect(page).to be_axe_clean.within(".map")
      end

      # rubocop:disable RSpec/NoExpectationExample
      it "renders a snapshot for a visual diff", :js do
        page.percy_snapshot("Application")
      end
      # rubocop:enable RSpec/NoExpectationExample
    end

    context "when on the new design" do
      before do
        sign_in create(:confirmed_user, name: "Jane Ng", email: "foo@bar.com")
        visit(application_path(application))
      end

      it "disables the clear form button" do
        expect(page).to have_button("Clear form", disabled: true)
      end

      context "when drafting a comment" do
        before do
          fill_in("Your comment", with: "I think this is a really good ideas")
          fill_in("Your full name", with: "Matthew Landauer")
          fill_in("Your address", with: "11 Foo Street")
          click_on("Review and publish")
        end

        it "takes you to a preview page" do
          expect(page).to have_content("Does this look right?")
          expect(page).to have_content("I think this is a really good ideas")
        end

        describe "accessibility tests", :js do
          it "passes" do
            expect(page).to be_axe_clean
          end
        end

        # rubocop:disable RSpec/NoExpectationExample
        it "renders a snapshot for a visual diff", :js do
          page.percy_snapshot("Comment preview")
        end
        # rubocop:enable RSpec/NoExpectationExample

        it "is not immediately publically visible in the comments section" do
          visit(application_path(application))
          within("#comments") do
            expect(page).to have_no_content("I think this is a really good ideas")
          end
        end

        it "pre-populates the form when you return" do
          visit(application_path(application))
          within("#add-comment") do
            expect(page).to have_content("I think this is a really good ideas")
          end
        end

        it "allows you to edit a comment that hasn't yet been published" do
          visit(application_path(application))
          fill_in("Your comment", with: "I'm not so sure this is a good idea")
          click_on("Review and publish")
          expect(page).to have_content("Does this look right?")
          expect(page).to have_content("I'm not so sure this is a good idea")
          expect(page).to have_content("Matthew Landauer")
        end

        it "allows you to delete a comment that hasn't yet been published" do
          visit(application_path(application))
          click_on("Clear form")

          expect(page).to have_no_content("I think this is a really good ideas")
        end
      end

      context "when publishing a comment" do
        before do
          fill_in("Your comment", with: "I think this is a really good ideas")
          fill_in("Your full name", with: "Matthew Landauer")
          fill_in("Your address", with: "11 Foo Street")
          click_on("Review and publish")
          click_on("Publish")
        end

        it "makes the comment visible to everyone" do
          within("#comments") do
            expect(page).to have_content("I think this is a really good ideas")
          end
        end

        it "sends it to the planning authority" do
          expect(unread_emails_for("feedback@foo.gov.au").size).to eq(1)
          open_email("feedback@foo.gov.au")
          expect(current_email.default_part_body.to_s).to include("I think this is a really good ideas")
        end

        it "suggests you share your comment" do
          expect(page).to have_content("Share your comment")
        end
      end
    end

    it "Unpublished comment should not be shown" do
      create(:comment, published: false, text: "I think this is a really good ideas", application:)

      visit(application_path(application))

      expect(page).to have_no_content("I think this is a really good ideas")
    end
  end

  it "Reporting abuse on a published comment" do
    comment = create(:published_comment, text: "I'm saying something abusive", name: "Jack Rude", user: create(:user, email: "rude@foo.com"), id: "23")

    sign_in create(:confirmed_user, email: "reporter@foo.com", name: "Joe Reporter")
    visit(new_comment_report_path(comment))

    fill_in("Why should the comment below be removed?", with: "You can't be rude to people!")
    click_on("Send report")

    expect(page).to have_content("A moderator will review the comment")
    expect(page).to have_content("Thank you for noticing!")

    expect(unread_emails_for("contact@planningalerts.org.au").size).to eq(1)
    open_email("contact@planningalerts.org.au")
    expect(current_email).to be_delivered_from("Joe Reporter <contact@planningalerts.org.au>")
    expect(current_email).to have_reply_to("Joe Reporter <reporter@foo.com>")
    expect(current_email).to have_subject("PlanningAlerts: Abuse report")
  end

  it "reporting abuse when user doesn't have a name set" do
    comment = create(:published_comment, text: "I'm saying something abusive", name: "Jack Rude", user: create(:user, email: "rude@foo.com"), id: "23")

    sign_in create(:confirmed_user, email: "reporter@foo.com")
    visit(new_comment_report_path(comment))

    fill_in("Why should the comment below be removed?", with: "You can't be rude to people!")
    click_on("Send report")

    expect(page).to have_content("A moderator will review the comment")
    expect(page).to have_content("Thank you for noticing!")

    expect(unread_emails_for("contact@planningalerts.org.au").size).to eq(1)
    open_email("contact@planningalerts.org.au")
    expect(current_email).to be_delivered_from("contact@planningalerts.org.au")
    expect(current_email).to have_reply_to("reporter@foo.com")
    expect(current_email).to have_subject("PlanningAlerts: Abuse report")
  end
end
