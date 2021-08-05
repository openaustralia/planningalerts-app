# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dalli/all/dalli.rbi
#
# dalli-2.7.10

module Dalli
  def self.default_logger; end
  def self.logger; end
  def self.logger=(logger); end
  def self.rails_logger; end
end
class Dalli::Compressor
  def self.compress(data); end
  def self.decompress(data); end
end
class Dalli::GzipCompressor
  def self.compress(data); end
  def self.decompress(data); end
end
class Dalli::Client
  def add(*args, &block); end
  def alive!; end
  def append(*args, &block); end
  def cas!(key, ttl = nil, options = nil, &block); end
  def cas(*args, &block); end
  def cas_core(key, always_set, ttl = nil, options = nil); end
  def close; end
  def decr(*args, &block); end
  def delete(*args, &block); end
  def fetch(key, ttl = nil, options = nil); end
  def flush(delay = nil); end
  def flush_all(delay = nil); end
  def get(*args, &block); end
  def get_multi(*args, &block); end
  def get_multi_yielder(keys); end
  def groups_for_keys(*keys); end
  def incr(*args, &block); end
  def initialize(servers = nil, options = nil); end
  def key_with_namespace(key); end
  def key_without_namespace(key); end
  def make_multi_get_requests(groups); end
  def mapped_keys(keys); end
  def multi; end
  def namespace; end
  def normalize_options(opts); end
  def normalize_servers(servers); end
  def perform(*all_args); end
  def perform_multi_response_start(servers); end
  def prepend(*args, &block); end
  def replace(*args, &block); end
  def reset; end
  def reset_stats; end
  def ring; end
  def set(*args, &block); end
  def stats(type = nil); end
  def touch(key, ttl = nil); end
  def ttl_or_default(ttl); end
  def validate_key(key); end
  def version; end
  def with; end
end
class Dalli::Ring
  def binary_search(ary, value); end
  def continuum; end
  def continuum=(arg0); end
  def entry_count_for(server, total_servers, total_weight); end
  def hash_for(key); end
  def initialize(servers, options); end
  def lock; end
  def server_for_key(key); end
  def servers; end
  def servers=(arg0); end
  def threadsafe!; end
end
class Dalli::Ring::Entry
  def initialize(val, srv); end
  def server; end
  def value; end
end
class Dalli::Server
  def add(key, value, ttl, options); end
  def alive?; end
  def append(key, value); end
  def cas(key); end
  def cas_response; end
  def close; end
  def compressor; end
  def connect; end
  def data_cas_response; end
  def decr(key, count, ttl, default); end
  def decr_incr(opcode, key, count, ttl, default); end
  def delete(key, cas); end
  def deserialize(value, flags); end
  def down!; end
  def failure!(exception); end
  def flush(ttl); end
  def generic_response(unpack = nil, cache_nils = nil); end
  def get(key, options = nil); end
  def guard_max_value(key, value); end
  def hostname; end
  def hostname=(arg0); end
  def incr(key, count, ttl, default); end
  def initialize(attribs, options = nil); end
  def keyvalue_response; end
  def lock!; end
  def multi?; end
  def multi_response; end
  def multi_response_abort; end
  def multi_response_completed?; end
  def multi_response_nonblock; end
  def multi_response_start; end
  def name; end
  def need_auth?; end
  def noop; end
  def options; end
  def options=(arg0); end
  def parse_hostname(str); end
  def password; end
  def port; end
  def port=(arg0); end
  def prepend(key, value); end
  def read(count); end
  def read_header; end
  def reconnect!(message); end
  def replace(key, value, ttl, cas, options); end
  def request(op, *args); end
  def reset_stats; end
  def sanitize_ttl(ttl); end
  def sasl_authentication; end
  def send_multiget(keys); end
  def serialize(key, value, options = nil); end
  def serializer; end
  def set(key, value, ttl, cas, options); end
  def sock; end
  def socket_type; end
  def split(n); end
  def stats(info = nil); end
  def touch(key, ttl); end
  def unlock!; end
  def up!; end
  def username; end
  def verify_state; end
  def version; end
  def weight; end
  def weight=(arg0); end
  def write(bytes); end
  def write_append_prepend(opcode, key, value); end
  def write_generic(bytes); end
  def write_noop; end
end
class Dalli::Server::NilObject
end
module Dalli::Server::TCPSocketOptions
  def setsockopts(sock, options); end
end
module Dalli::Server::KSocket
  def self.included(receiver); end
end
module Dalli::Server::KSocket::InstanceMethods
  def read_available; end
  def readfull(count); end
end
class Dalli::Server::KSocket::TCP < TCPSocket
  def options; end
  def options=(arg0); end
  def self.open(host, port, server, options = nil); end
  def server; end
  def server=(arg0); end
  extend Dalli::Server::TCPSocketOptions
  include Dalli::Server::KSocket
  include Dalli::Server::KSocket::InstanceMethods
end
class Dalli::Server::KSocket::UNIX < UNIXSocket
  def options; end
  def options=(arg0); end
  def self.open(path, server, options = nil); end
  def server; end
  def server=(arg0); end
  include Dalli::Server::KSocket
  include Dalli::Server::KSocket::InstanceMethods
end
module Dalli::Threadsafe
  def alive?; end
  def close; end
  def init_threadsafe; end
  def lock!; end
  def multi_response_abort; end
  def multi_response_nonblock; end
  def multi_response_start; end
  def request(op, *args); end
  def self.extended(obj); end
  def unlock!; end
end
class Dalli::Railtie < Rails::Railtie
end
class Dalli::DalliError < RuntimeError
end
class Dalli::NetworkError < Dalli::DalliError
end
class Dalli::RingError < Dalli::DalliError
end
class Dalli::MarshalError < Dalli::DalliError
end
class Dalli::UnmarshalError < Dalli::DalliError
end
class Dalli::ValueOverMaxSize < RuntimeError
end
module Rack
end
module Rack::Session
end
class Rack::Session::Dalli < Rack::Session::Abstract::Persisted
  def delete_session(req, sid, options); end
  def destroy_session(env, session_id, options); end
  def extract_dalli_options(options); end
  def find_session(req, sid); end
  def generate_sid_with(dc); end
  def get_session(env, sid); end
  def initialize(app, options = nil); end
  def mutex; end
  def pool; end
  def set_session(env, session_id, new_session, options); end
  def ttl(expire_after); end
  def with_block(env, default = nil, &block); end
  def write_session(req, sid, session, options); end
end
