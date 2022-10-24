# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `elasticsearch` gem.
# Please instead update this file by running `bin/tapioca gem elasticsearch`.

# source://elasticsearch//lib/elasticsearch.rb#104
module Elastic
  class << self
    # If the version is X.X.X.pre/alpha/beta, use X.X.Xp for the meta-header:
    #
    # source://elasticsearch//lib/elasticsearch.rb#106
    def client_meta_version; end
  end
end

# Constant for elasticsearch-transport meta-header
#
# source://elasticsearch//lib/elasticsearch.rb#115
Elastic::ELASTICSEARCH_SERVICE_VERSION = T.let(T.unsafe(nil), Array)

# source://elasticsearch//lib/elasticsearch/version.rb#18
module Elasticsearch; end

# source://elasticsearch//lib/elasticsearch.rb#28
class Elasticsearch::Client
  include ::Elasticsearch::API
  include ::Elasticsearch::API::Shutdown
  include ::Elasticsearch::API::Features
  include ::Elasticsearch::API::DanglingIndices
  include ::Elasticsearch::API::Remote
  include ::Elasticsearch::API::Cat
  include ::Elasticsearch::API::Tasks
  include ::Elasticsearch::API::Snapshot
  include ::Elasticsearch::API::Ingest
  include ::Elasticsearch::API::Indices
  include ::Elasticsearch::API::Nodes
  include ::Elasticsearch::API::Cluster
  include ::Elasticsearch::API::Actions
  include ::Elasticsearch::API::Common

  # See Elasticsearch::Transport::Client for initializer parameters
  #
  # @return [Client] a new instance of Client
  #
  # source://elasticsearch//lib/elasticsearch.rb#33
  def initialize(arguments = T.unsafe(nil), &block); end

  # source://elasticsearch//lib/elasticsearch.rb#38
  def method_missing(name, *args, &block); end

  # Returns the value of attribute transport.
  #
  # source://elasticsearch//lib/elasticsearch.rb#30
  def transport; end

  # Sets the attribute transport
  #
  # @param value the value to set the attribute transport to.
  #
  # source://elasticsearch//lib/elasticsearch.rb#30
  def transport=(_arg0); end

  private

  # source://elasticsearch//lib/elasticsearch.rb#92
  def elasticsearch_validation_request; end

  # source://elasticsearch//lib/elasticsearch.rb#49
  def verify_elasticsearch; end

  # @raise [Elasticsearch::UnsupportedProductError]
  #
  # source://elasticsearch//lib/elasticsearch.rb#70
  def verify_with_version_or_header(body, version, headers); end
end

# source://elasticsearch//lib/elasticsearch.rb#24
Elasticsearch::NOT_ELASTICSEARCH_WARNING = T.let(T.unsafe(nil), String)

# source://elasticsearch//lib/elasticsearch.rb#25
Elasticsearch::NOT_SUPPORTED_ELASTICSEARCH_WARNING = T.let(T.unsafe(nil), String)

# source://elasticsearch//lib/elasticsearch.rb#23
Elasticsearch::SECURITY_PRIVILEGES_VALIDATION_WARNING = T.let(T.unsafe(nil), String)

# source://elasticsearch//lib/elasticsearch.rb#97
class Elasticsearch::UnsupportedProductError < ::StandardError
  # @return [UnsupportedProductError] a new instance of UnsupportedProductError
  #
  # source://elasticsearch//lib/elasticsearch.rb#98
  def initialize(message = T.unsafe(nil)); end
end

# source://elasticsearch//lib/elasticsearch/version.rb#19
Elasticsearch::VERSION = T.let(T.unsafe(nil), String)

# source://elasticsearch//lib/elasticsearch.rb#26
Elasticsearch::YOU_KNOW_FOR_SEARCH = T.let(T.unsafe(nil), String)
