# frozen_string_literal: true

source "https://rubygems.org"

gem "bootsnap", require: false
gem "rails", "~> 7.1.0"
gem "rake"

gem "pg"

# Supports postgis so we can magically do spatial queries
gem "activerecord-postgis-adapter"

# API
gem "dalli"

# For throttling API requests
gem "rack-attack"

# Admin interface
gem "administrate", "~> 0.20.0"

# Logging in and such things
gem "devise", "~> 4.2" # Pin to a particular major version to get deprecation warnings
gem "pundit", "~> 2.2"
gem "rolify"

# Extra validation
gem "validates_email_format_of"
gem "validate_url"

# Background queue uses sidekiq
gem "sidekiq", "~> 7.0"
# Run cron jobs alongside sidekiq. Only use this for jobs that need
# to run once across a cluster. We're still using "regular" cron
# for jobs that need to run on every machine
gem "sidekiq-cron"

# For accessing external urls
# TODO: Just pick one and use it for everything
gem "httparty"
gem "rest-client"

# Pagination
gem "kaminari"

# Geocoding and location stuff
gem "geokit"
# rexml is used by geokit but is no longer by default in ruby 3.1
gem "rexml"

# CSS related stuff
gem "autoprefixer-rails"
gem "tailwindcss-rails", "~> 2.0"

# Sanitizing and manipulating user input
gem "rails_autolink"
gem "sanitize"

# Startup setup and environment
gem "dotenv-rails"
gem "foreman"

# Figure out who is likely to be human
gem "recaptcha", require: "recaptcha/rails"

# Site search
gem "searchkick"

# Used to parse different external application feeds
gem "nokogiri"

# Speed up json parsing
# TODO: Double check where this is being used
gem "oj"

# For logging API calls to elasticsearch
# We can't upgrade elasticsearch gem until we've upgraded the server
# TODO: Fix this
gem "elasticsearch", "~> 7"
# Elasticsearch doesn't seem to include this dependency even though it's necessary
# with faraday 2 which is needed by the gem. Weird.
gem "faraday-net_http_persistent"

# For conditional counter caches (used to count visible comments)
gem "counter_culture"

# Make it easier for people using the API by setting CORS headers
gem "rack-cors"

# For type checking
gem "sorbet-runtime"

# For automatic creation of github issues when scrapers are broken
gem "octokit"
# Just including faraday-multipart and faraday-retry to keep octokit quiet
gem "faraday-multipart"
gem "faraday-retry"

# For rendering json output
gem "jb"

# For sending notifications to Slack about bounced emails to authorities
gem "slack-notifier"

# Provide a url endpoint that checks the health of the app
# (used by load balancer)
gem "health_check"

# For accessing the Github GraphQL API which we're using for accessing projects
# which we're using for managing the list of broken scrapers
gem "graphql-client"

# For feature flags
gem "flipper"
gem "flipper-redis"
gem "flipper-ui"

# Testing this out for application performance monitoring
gem "skylight"

# For making more reusable and testable components
gem "view_component"

# For uploading sitemaps to S3 and uploading attachments to S3 using active storage
gem "aws-sdk-s3"

# For generating sitemaps for search engines
gem "sitemap_generator"

# For accessing wikidata
gem "sparql-client"
gem "wikidata"

# For reading in authority boundary data
gem "rgeo-shapefile"
gem "rubyzip"

# Using this webserver for development and production
gem "puma"

# Locking sprockets version
gem "sprockets"

# Needed for getting boundary data into maps
gem "rgeo-geojson"

# For compressing javascript
gem "terser"

# For versioning changes in the admin panel
# Using forked version so we can get access to
# https://github.com/IrvanFza/administrate-field-paper_trail/pull/1/files
# TODO: Move to upstream once this gets merged
gem "administrate-field-paper_trail", github: "DaanVanVugt/administrate-field-paper_trail",
                                      branch: "feature/link-to-whodunnit"
gem "paper_trail"

# A/B testing
gem "split", require: "split/dashboard"

# For some reason this now needs to be available in development (as well as test) for the mailer previews to work
gem "rspec-rails"

# For proxying requests to plausible.io analytics
gem "rack-proxy"

group :test do
  gem "capybara"
  gem "email_spec"
  gem "factory_bot"
  gem "factory_bot_rails"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "timecop"
  gem "vcr"
  gem "webdrivers"
  gem "webmock"
  # FIXME: stop using `mock_model` and remove this
  gem "rspec-activemodel-mocks"
  # For automated accessibility testing
  gem "axe-core-capybara"
  gem "axe-core-rspec"
  # For visual differencing using percy.io
  gem "percy-capybara"
end

group :development do
  # To profile code in development
  gem "rack-mini-profiler"

  # For static type checking
  gem "sorbet"
  gem "spoom"
  gem "tapioca"

  # For guard and associated bits
  gem "growl"
  gem "guard"
  gem "guard-rspec"
  gem "guard-rubocop"
  gem "rb-fsevent"
  gem "rb-inotify", require: false

  gem "rails_live_reload"

  # For a better error page in development
  gem "better_errors"
  gem "binding_of_caller"

  # For deployment
  gem "capistrano", require: false
  # For puma 6 support we're using the "beta" version
  gem "capistrano3-puma", ">= 6.0.0.beta.1", require: false
  gem "capistrano-aws"
  gem "capistrano-bundler", require: false
  gem "capistrano-rails", require: false
  gem "capistrano-rvm", require: false

  # Help with code quality
  gem "brakeman"
  gem "erb_lint", require: false
  gem "rubocop", require: false
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rspec_rails", require: false
  gem "rubocop-sorbet", require: false

  # To help identify database issues
  gem "active_record_doctor"
end

group :production do
  # Reporting exceptions
  gem "honeybadger"

  # Javascript runtime (required for precompiling assets in production)
  gem "mini_racer"
  gem "uglifier"
end
