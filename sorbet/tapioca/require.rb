# typed: strict
# frozen_string_literal: true

require "active_support/core_ext/integer/time"
require "active_support/core_ext/securerandom"
require "active_support/testing/stream"
require "administrate/base_dashboard"
require "administrate/custom_dashboard"
require "administrate/field/base"
require "bootsnap/setup"
require "bundler"
require "bundler/setup"
require "devise/orm/active_record"
require "geocoder/stores/active_record"
require "graphql/client"
require "graphql/client/http"
require "rails/all"
require "rails_autolink/helpers"
require "rest-client"
require "rubygems"
require "sidekiq/web"
require "sidekiq/scheduled"
require "sorbet-runtime"
require "zlib"
