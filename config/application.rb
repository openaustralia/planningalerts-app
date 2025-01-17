# typed: false
require_relative "boot"

require "rails/all"
require "rack/attack"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# TODO: Remove this as soon as we can remove sassc-rails
# Currently administrate depends on it
class SkippingSassCompressor
  def compress(string)
    options = { syntax: :scss, cache: false, read_cache: false, style: :compressed}
    begin
      SassC::Engine.new(string, options).render
    rescue => e
      puts "Could not compress '#{string[0..65]}'...: #{e.message}, skipping compression"
      string
    end
  end
end

# This is for proxying requests to this server to plausible.io for analytics.
# For some reason didn't work putting this in config/initializers/proxy.rb
# TODO: Fix this
class PlausibleProxy < Rack::Proxy
  def perform_request(env)
    request = Rack::Request.new(env)

    # use rack proxy for anything hitting plausible analytics endpoints
    if request.path =~ %r{^/js/script\.} || request.path =~ %r{^/api/event}
        # most backends required host set properly, but rack-proxy doesn't set this for you automatically
        # even when a backend host is passed in via the options
        env["HTTP_HOST"] = "plausible.io"

        # don't send your sites cookies to target service, unless it is a trusted internal service that can parse all your cookies
        env['HTTP_COOKIE'] = ''

        env['content-length'] = nil

        super(env)
    else
      @app.call(env)
    end
  end
end

module PlanningalertsApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.active_support.cache_format_version = 7.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    config.active_job.queue_adapter = :sidekiq

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.time_zone = "UTC"

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.middleware.use Rack::Attack
    config.middleware.use PlausibleProxy

    config.action_dispatch.tld_length = 2

    config.exceptions_app = routes

    config.assets.css_compressor = SkippingSassCompressor.new

    # Application configuration
    # These are things that are nice to have as configurations but unlikely really
    # in practise to change much

    config.planningalerts_meta_description =
      "A free service which searches Australian planning authority websites " \
      "and emails you details of applications near you"

    # Values used in the API examples
    config.planningalerts_api_example_address = "24 Bruce Road Glenbrook, NSW 2773"
    config.planningalerts_api_example_size = 4000
    config.planningalerts_api_example_authority = "blue_mountains"
    config.planningalerts_api_example_postcode = "2780"
    config.planningalerts_api_example_suburb = "Katoomba"
    config.planningalerts_api_example_state = "NSW"

    # This lat/lng is for 24 Bruce Road as well
    config.planningalerts_api_example_lat = -33.772609
    config.planningalerts_api_example_lng = 150.624263

    # This covers most of Victoria and NSW
    config.planningalerts_api_example_bottom_left_lat = -38.556757
    config.planningalerts_api_example_bottom_left_lng = 140.833740
    config.planningalerts_api_example_top_right_lat = -29.113775
    config.planningalerts_api_example_top_right_lng = 153.325195

    # This was causing exceptions to be thrown on some API calls. Disabling it as it seems not to be needed
    config.action_dispatch.ip_spoofing_check = false

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # config.skylight.probes << "active_job"
  end
end
