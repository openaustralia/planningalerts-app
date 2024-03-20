# frozen_string_literal: true

Flipper.configure do |config|
  config.adapter { Flipper::Adapters::Redis.new(Redis.new(url: Rails.configuration.x.flipper_redis_url)) }
end

Flipper::UI.configure do |config|
  config.descriptions_source = lambda do |_keys|
    # This should be a complete list of all features being currently used in the codebase
    {
      "disable_streetview_in_emails" => "Disables Google streetview in email. Do this to save money",
      "disable_streetview_in_app" => "Disable Google streetview in the main application. Do this to save money",
      "switch_themes" => "Can switch to new in progress design for the site",
      "extra_options_on_address_search" => "Add extra options to filter by time/space when searching address",
      "show_authority_map" => "Show boundary of authority on a map",
      # Very important to note that switching on maintance_mode ** is not enough **.
      # You must also disable writes to the database by creating a database user with read-only privileges and using that
      "maintenance_mode" => "Put a banner across the site and give helpful message to the user if trying to write to the database",
      "full_text_search" => "Allow searching for all applications containing the word 'tree', for example",
      "view_application_versions" => "Can view the update history of an application",
      "request_api_keys" => "Allow a new experimental flow for requesting API keys. Only works with tailwind theme."
    }
  end

  # Defaults to false. Set to true to show feature descriptions on the list
  # page as well as the view page.
  config.show_feature_description_in_list = true
end

# Registers a group named admins - this can be used to easily add a feature for all
# admins
Flipper.register(:admins) do |actor, context|
  actor.respond_to?(:admin?) && actor.admin?
end
