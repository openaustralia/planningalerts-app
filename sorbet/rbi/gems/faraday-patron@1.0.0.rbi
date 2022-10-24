# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-patron` gem.
# Please instead update this file by running `bin/tapioca gem faraday-patron`.

# source://faraday-patron//lib/faraday/adapter/patron.rb#3
module Faraday
  class << self
    # source://faraday/1.10.2/lib/faraday.rb#81
    def default_adapter; end

    # source://faraday/1.10.2/lib/faraday.rb#137
    def default_adapter=(adapter); end

    # source://faraday/1.10.2/lib/faraday.rb#155
    def default_connection; end

    # source://faraday/1.10.2/lib/faraday.rb#84
    def default_connection=(_arg0); end

    # source://faraday/1.10.2/lib/faraday.rb#162
    def default_connection_options; end

    # source://faraday/1.10.2/lib/faraday.rb#169
    def default_connection_options=(options); end

    # source://faraday/1.10.2/lib/faraday.rb#89
    def ignore_env_proxy; end

    # source://faraday/1.10.2/lib/faraday.rb#89
    def ignore_env_proxy=(_arg0); end

    # source://faraday/1.10.2/lib/faraday.rb#72
    def lib_path; end

    # source://faraday/1.10.2/lib/faraday.rb#72
    def lib_path=(_arg0); end

    # source://faraday/1.10.2/lib/faraday.rb#118
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # source://faraday/1.10.2/lib/faraday.rb#128
    def require_lib(*libs); end

    # source://faraday/1.10.2/lib/faraday.rb#128
    def require_libs(*libs); end

    # source://faraday/1.10.2/lib/faraday.rb#142
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # source://faraday/1.10.2/lib/faraday.rb#68
    def root_path; end

    # source://faraday/1.10.2/lib/faraday.rb#68
    def root_path=(_arg0); end

    private

    # source://faraday/1.10.2/lib/faraday.rb#178
    def method_missing(name, *args, &block); end
  end
end

# source://faraday-patron//lib/faraday/adapter/patron.rb#4
class Faraday::Adapter
  # source://faraday/1.10.2/lib/faraday/adapter.rb#33
  def initialize(_app = T.unsafe(nil), opts = T.unsafe(nil), &block); end

  # source://faraday/1.10.2/lib/faraday/adapter.rb#60
  def call(env); end

  # source://faraday/1.10.2/lib/faraday/adapter.rb#55
  def close; end

  # source://faraday/1.10.2/lib/faraday/adapter.rb#46
  def connection(env); end

  private

  # source://faraday/1.10.2/lib/faraday/adapter.rb#91
  def request_timeout(type, options); end

  # source://faraday/1.10.2/lib/faraday/adapter.rb#67
  def save_response(env, status, body, headers = T.unsafe(nil), reason_phrase = T.unsafe(nil)); end
end

# source://faraday/1.10.2/lib/faraday/adapter.rb#10
Faraday::Adapter::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

# Patron adapter
#
# source://faraday-patron//lib/faraday/adapter/patron.rb#6
class Faraday::Adapter::Patron < ::Faraday::Adapter
  # source://faraday-patron//lib/faraday/adapter/patron.rb#9
  def build_connection(env); end

  # source://faraday-patron//lib/faraday/adapter/patron.rb#24
  def call(env); end

  # source://faraday-patron//lib/faraday/adapter/patron.rb#101
  def configure_proxy(session, proxy); end

  # source://faraday-patron//lib/faraday/adapter/patron.rb#81
  def configure_ssl(session, ssl); end

  # source://faraday-patron//lib/faraday/adapter/patron.rb#89
  def configure_timeouts(session, req); end

  private

  # @return [Boolean]
  #
  # source://faraday-patron//lib/faraday/adapter/patron.rb#125
  def connection_timed_out_message?(message); end
end

# source://faraday-patron//lib/faraday/adapter/patron.rb#114
Faraday::Adapter::Patron::CURL_TIMEOUT_MESSAGES = T.let(T.unsafe(nil), Array)

# source://faraday/1.10.2/lib/faraday/adapter.rb#99
Faraday::Adapter::TIMEOUT_KEYS = T.let(T.unsafe(nil), Hash)

# source://faraday/1.10.2/lib/faraday.rb#60
Faraday::CONTENT_TYPE = T.let(T.unsafe(nil), String)

# source://faraday-multipart/1.0.4/lib/faraday/multipart.rb#18
Faraday::CompositeReadIO = Faraday::Multipart::CompositeReadIO

# source://faraday-multipart/1.0.4/lib/faraday/multipart.rb#15
Faraday::FilePart = Multipart::Post::UploadIO

# source://faraday/1.10.2/lib/faraday/methods.rb#5
Faraday::METHODS_WITH_BODY = T.let(T.unsafe(nil), Array)

# source://faraday/1.10.2/lib/faraday/methods.rb#4
Faraday::METHODS_WITH_QUERY = T.let(T.unsafe(nil), Array)

# source://faraday-multipart/1.0.4/lib/faraday/multipart.rb#16
Faraday::ParamPart = Faraday::Multipart::ParamPart

# source://faraday-multipart/1.0.4/lib/faraday/multipart.rb#17
Faraday::Parts = Multipart::Post::Parts

# Main Faraday::Patron module
#
# source://faraday-patron//lib/faraday/patron/version.rb#4
module Faraday::Patron; end

# source://faraday-patron//lib/faraday/patron/version.rb#5
Faraday::Patron::VERSION = T.let(T.unsafe(nil), String)

# source://faraday/1.10.2/lib/faraday.rb#12
Faraday::Timer = Timeout

# source://faraday-multipart/1.0.4/lib/faraday/multipart.rb#21
Faraday::UploadIO = Multipart::Post::UploadIO

# source://faraday/1.10.2/lib/faraday/version.rb#4
Faraday::VERSION = T.let(T.unsafe(nil), String)
