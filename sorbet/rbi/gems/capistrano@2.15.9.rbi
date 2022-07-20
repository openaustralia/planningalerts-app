# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `capistrano` gem.
# Please instead update this file by running `bin/tapioca gem capistrano`.

# typed: true

module Capistrano
  class << self
    def configuration(*args); end
    def plugin(name, mod); end
    def remove_plugin(name); end
  end
end

class Capistrano::Callback
  def initialize(source, options = T.unsafe(nil)); end

  def applies_to?(task); end
  def except; end
  def only; end
  def options; end
  def source; end
end

class Capistrano::CaptureError < ::Capistrano::Error; end

class Capistrano::Command
  include ::Capistrano::Processable

  def initialize(tree, sessions, options = T.unsafe(nil), &block); end

  def options; end
  def process!; end
  def sessions; end
  def stop!; end
  def tree; end

  private

  def environment; end
  def logger; end
  def open_channels; end
  def replace_placeholders(command, channel); end
  def request_pty_if_necessary(channel); end

  class << self
    def process(tree, sessions, options = T.unsafe(nil)); end
  end
end

class Capistrano::Command::Tree
  include ::Enumerable

  def initialize(config); end

  def branches; end
  def branches_for(server); end
  def configuration; end
  def each; end
  def else(command, &block); end
  def fallback; end
  def when(condition, command, options = T.unsafe(nil), &block); end
end

class Capistrano::Command::Tree::Branch
  def initialize(command, options, callback); end

  def callback; end
  def callback=(_arg0); end
  def command; end
  def command=(_arg0); end
  def condition; end
  def condition=(_arg0); end
  def last?; end
  def match(server); end
  def options; end
  def skip!; end
  def skip?; end
  def to_s(parallel = T.unsafe(nil)); end
end

class Capistrano::Command::Tree::ConditionBranch < ::Capistrano::Command::Tree::Branch
  def initialize(configuration, condition, command, options, callback); end

  def configuration; end
  def configuration=(_arg0); end
  def match(server); end
end

class Capistrano::Command::Tree::ConditionBranch::Evaluator
  def initialize(config, condition, server); end

  def condition; end
  def configuration; end
  def in?(role); end
  def method_missing(sym, *args, &block); end
  def result; end
  def server; end
end

class Capistrano::Command::Tree::ElseBranch < ::Capistrano::Command::Tree::Branch
  def initialize(command, options, callback); end
end

class Capistrano::CommandError < ::Capistrano::RemoteError; end

class Capistrano::Configuration
  include ::Capistrano::Configuration::Variables
  include ::Capistrano::Configuration::Servers
  include ::Capistrano::Configuration::Roles
  include ::Capistrano::Configuration::Namespaces
  include ::Capistrano::Configuration::LogFormatters
  include ::Capistrano::Configuration::Loading
  include ::Capistrano::Configuration::Execution
  include ::Capistrano::Configuration::Connections
  include ::Capistrano::Configuration::AliasTask
  include ::Capistrano::Configuration::Actions::Invocation
  include ::Capistrano::Configuration::Actions::Inspect
  include ::Capistrano::Configuration::Actions::FileTransfer
  include ::Capistrano::Configuration::Callbacks
  extend ::Capistrano::Configuration::Loading::ClassMethods
  extend ::Capistrano::Configuration::Actions::Invocation::ClassMethods

  def initialize(*args); end

  def debug; end
  def debug=(_arg0); end
  def dry_run; end
  def dry_run=(_arg0); end
  def invoke_task_directly(task); end
  def logger; end
  def logger=(_arg0); end
  def method_missing(sym, *args, &block); end
  def preserve_roles; end
  def preserve_roles=(_arg0); end
  def respond_to?(sym, include_priv = T.unsafe(nil)); end
  def respond_to_without_variables?(*_arg0); end

  protected

  def invoke_task_directly_without_callbacks(task); end

  private

  def defer; end
  def initialize_without_callbacks(*args); end
  def initialize_without_connections(*args); end
  def initialize_without_execution(*args); end
  def initialize_without_invocation(*args); end
  def initialize_without_loading(*args); end
  def initialize_without_namespaces(*args); end
  def initialize_without_roles(*args); end
  def initialize_without_variables(options = T.unsafe(nil)); end
  def method_missing_without_variables(*_arg0); end
end

module Capistrano::Configuration::Actions; end

module Capistrano::Configuration::Actions::FileTransfer
  def download(from, to, options = T.unsafe(nil), &block); end
  def get(remote_path, path, options = T.unsafe(nil), &block); end
  def put(data, path, options = T.unsafe(nil)); end
  def transfer(direction, from, to, options = T.unsafe(nil), &block); end
  def upload(from, to, options = T.unsafe(nil), &block); end
end

module Capistrano::Configuration::Actions::Inspect
  def capture(command, options = T.unsafe(nil)); end
  def stream(command, options = T.unsafe(nil)); end
end

module Capistrano::Configuration::Actions::Invocation
  mixes_in_class_methods ::Capistrano::Configuration::Actions::Invocation::ClassMethods

  def add_default_command_options(options); end
  def continue_execution(tree); end
  def continue_execution_for_branch(branch); end
  def initialize_with_invocation(*args); end
  def invoke_command(cmd, options = T.unsafe(nil), &block); end
  def parallel(options = T.unsafe(nil)); end
  def run(cmd, options = T.unsafe(nil), &block); end
  def run_tree(tree, options = T.unsafe(nil)); end
  def sudo(*parameters, &block); end
  def sudo_behavior_callback(fallback); end
  def sudo_prompt; end

  private

  def branches_for_servers(tree, servers); end

  class << self
    def included(base); end
  end
end

module Capistrano::Configuration::Actions::Invocation::ClassMethods
  def default_io_proc; end
  def default_io_proc=(_arg0); end
end

module Capistrano::Configuration::AliasTask
  def alias_task(new_name, old_name); end
end

module Capistrano::Configuration::Callbacks
  def after(task_name, *args, &block); end
  def before(task_name, *args, &block); end
  def callbacks; end
  def filter_deprecated_tasks(names); end
  def initialize_with_callbacks(*args); end
  def invoke_task_directly_with_callbacks(task); end
  def on(event, *args, &block); end
  def trigger(event, task = T.unsafe(nil)); end

  class << self
    def included(base); end
  end
end

module Capistrano::Configuration::Connections
  def connect!(options = T.unsafe(nil)); end
  def connection_factory; end
  def establish_connections_to(servers); end
  def execute_on_servers(options = T.unsafe(nil)); end
  def failed!(server); end
  def filter_servers(options = T.unsafe(nil)); end
  def has_failed?(server); end
  def initialize_with_connections(*args); end
  def sessions; end
  def teardown_connections_to(servers); end

  private

  def establish_connection_to(server, failures = T.unsafe(nil)); end
  def safely_establish_connection_to(server, thread, failures = T.unsafe(nil)); end

  class << self
    def included(base); end
  end
end

class Capistrano::Configuration::Connections::DefaultConnectionFactory
  def initialize(options); end

  def connect_to(server); end
end

class Capistrano::Configuration::Connections::GatewayConnectionFactory
  def initialize(gateway, options); end

  def add_gateway(gateway); end
  def connect_to(server); end
  def gateway_for(server); end
end

module Capistrano::Configuration::Execution
  def current_task; end
  def execute_task(task); end
  def find_and_execute_task(path, hooks = T.unsafe(nil)); end
  def on_rollback(&block); end
  def rollback_requests; end
  def rollback_requests=(rollback_requests); end
  def task_call_frames; end
  def transaction; end
  def transaction?; end

  protected

  def invoke_task_directly(task); end
  def pop_task_call_frame; end
  def push_task_call_frame(task); end
  def rollback!; end

  private

  def initialize_with_execution(*args); end

  class << self
    def included(base); end
  end
end

class Capistrano::Configuration::Execution::TaskCallFrame < ::Struct
  def rollback; end
  def rollback=(_); end
  def task; end
  def task=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

module Capistrano::Configuration::Loading
  mixes_in_class_methods ::Capistrano::Configuration::Loading::ClassMethods

  def file_in_load_path?(file); end
  def load(*args, &block); end
  def load_paths; end
  def require(*args); end

  private

  def find_file_in_load_path(file); end
  def initialize_with_loading(*args); end
  def load_from_file(file, name = T.unsafe(nil)); end
  def remember_load(options); end

  class << self
    def included(base); end
  end
end

module Capistrano::Configuration::Loading::ClassMethods
  def current_feature; end
  def current_feature=(feature); end
  def instance(require_config = T.unsafe(nil)); end
  def instance=(config); end
  def recipes_per_feature; end
end

module Capistrano::Configuration::LogFormatters
  def default_log_formatters(formatters); end
  def disable_log_formatters; end
  def log_formatter(options); end
end

module Capistrano::Configuration::Namespaces
  def default_task; end
  def define_task(task); end
  def desc(text); end
  def find_task(name); end
  def fully_qualified_name; end
  def name; end
  def namespace(name, &block); end
  def namespaces; end
  def next_description(reset = T.unsafe(nil)); end
  def parent; end
  def search_task(name); end
  def task(name, options = T.unsafe(nil), &block); end
  def task_list(all = T.unsafe(nil)); end
  def tasks; end
  def top; end

  private

  def all_methods; end
  def initialize_with_namespaces(*args); end

  class << self
    def included(base); end
  end
end

Capistrano::Configuration::Namespaces::DEFAULT_TASK = T.let(T.unsafe(nil), Symbol)

class Capistrano::Configuration::Namespaces::Namespace
  include ::Capistrano::Configuration::AliasTask
  include ::Capistrano::Configuration::Namespaces

  def initialize(*args); end

  def method_missing(sym, *args, &block); end
  def respond_to?(sym, include_priv = T.unsafe(nil)); end
  def role(*args); end

  private

  def initialize_without_namespaces(name, parent); end
end

module Capistrano::Configuration::Roles
  def initialize_with_roles(*args); end
  def role(which, *args, &block); end
  def role_names_for_host(host); end
  def roles; end
  def server(host, *roles); end

  class << self
    def included(base); end
  end
end

module Capistrano::Configuration::Servers
  def find_servers(options = T.unsafe(nil)); end
  def find_servers_for_task(task, options = T.unsafe(nil)); end

  protected

  def build_list(list); end
  def filter_server_list(servers); end
  def role_list_from(roles); end
  def server_list_from(hosts); end
end

module Capistrano::Configuration::Variables
  def [](variable); end
  def []=(variable, *args, &block); end
  def exists?(variable); end
  def fetch(variable, *args); end
  def method_missing_with_variables(sym, *args, &block); end
  def reset!(variable); end
  def respond_to_with_variables?(sym, include_priv = T.unsafe(nil)); end
  def set(variable, *args, &block); end
  def unset(variable); end
  def variables; end

  private

  def initialize_with_variables(*args); end
  def protect(variable); end

  class << self
    def included(base); end
  end
end

class Capistrano::ConnectionError < ::Capistrano::RemoteError; end
Capistrano::EXTENSIONS = T.let(T.unsafe(nil), Hash)
class Capistrano::Error < ::RuntimeError; end

class Capistrano::ExtensionProxy
  def initialize(config, mod); end

  def method_missing(sym, *args, &block); end
end

class Capistrano::LocalArgumentError < ::Capistrano::Error; end

class Capistrano::Logger
  def initialize(options = T.unsafe(nil)); end

  def close; end
  def debug(message, line_prefix = T.unsafe(nil)); end
  def device; end
  def device=(_arg0); end
  def disable_formatters; end
  def disable_formatters=(_arg0); end
  def format(message, color, style, nl = T.unsafe(nil)); end
  def important(message, line_prefix = T.unsafe(nil)); end
  def info(message, line_prefix = T.unsafe(nil)); end
  def level; end
  def level=(_arg0); end
  def log(level, message, line_prefix = T.unsafe(nil)); end
  def trace(message, line_prefix = T.unsafe(nil)); end

  class << self
    def add_formatter(options); end
    def default_formatters; end
    def default_formatters=(defaults = T.unsafe(nil)); end
    def sorted_formatters; end
  end
end

Capistrano::Logger::COLORS = T.let(T.unsafe(nil), Hash)
Capistrano::Logger::DEBUG = T.let(T.unsafe(nil), Integer)
Capistrano::Logger::IMPORTANT = T.let(T.unsafe(nil), Integer)
Capistrano::Logger::INFO = T.let(T.unsafe(nil), Integer)
Capistrano::Logger::MAX_LEVEL = T.let(T.unsafe(nil), Integer)
Capistrano::Logger::STYLES = T.let(T.unsafe(nil), Hash)
Capistrano::Logger::TRACE = T.let(T.unsafe(nil), Integer)
class Capistrano::NoMatchingServersError < ::Capistrano::Error; end
class Capistrano::NoSuchTaskError < ::Capistrano::Error; end

class Capistrano::ProcCallback < ::Capistrano::Callback
  def call; end
end

module Capistrano::Processable
  def ensure_each_session; end
  def process_iteration(wait = T.unsafe(nil), &block); end
end

module Capistrano::Processable::SessionAssociation
  def session; end
  def session=(_arg0); end

  class << self
    def on(exception, session); end
  end
end

class Capistrano::RemoteError < ::Capistrano::Error
  def hosts; end
  def hosts=(_arg0); end
end

class Capistrano::Role
  include ::Enumerable

  def initialize(*list); end

  def <<(*list); end
  def clear; end
  def each(&block); end
  def empty?; end
  def include?(server); end
  def push(*list); end
  def servers; end
  def to_ary; end

  protected

  def dynamic_servers; end

  class << self
    def wrap_list(*list); end
    def wrap_server(item, options); end
  end
end

class Capistrano::Role::DynamicServerList
  def initialize(block, options); end

  def reset!; end
  def to_ary; end
end

class Capistrano::SSH
  class << self
    def connect(server, options = T.unsafe(nil)); end
    def connection_strategy(server, options = T.unsafe(nil), &block); end
  end
end

module Capistrano::SSH::Server
  def xserver; end
  def xserver=(_arg0); end

  class << self
    def apply_to(connection, server); end
  end
end

class Capistrano::ServerDefinition
  include ::Comparable

  def initialize(string, options = T.unsafe(nil)); end

  def <=>(server); end
  def ==(server); end
  def eql?(server); end
  def hash; end
  def host; end
  def options; end
  def port; end
  def to_s; end
  def user; end

  class << self
    def default_user; end
  end
end

class Capistrano::TaskCallback < ::Capistrano::Callback
  def initialize(config, source, options = T.unsafe(nil)); end

  def applies_to?(task); end
  def call; end
  def config; end
end

class Capistrano::TaskDefinition
  def initialize(name, namespace, options = T.unsafe(nil), &block); end

  def body; end
  def brief_description(max_length = T.unsafe(nil)); end
  def continue_on_error?; end
  def desc; end
  def description(rebuild = T.unsafe(nil)); end
  def fully_qualified_name; end
  def max_hosts; end
  def name; end
  def name=(value); end
  def namespace; end
  def on_error; end
  def options; end
end

class Capistrano::Transfer
  include ::Capistrano::Processable

  def initialize(direction, from, to, sessions, options = T.unsafe(nil), &block); end

  def active?; end
  def callback; end
  def direction; end
  def from; end
  def logger; end
  def operation; end
  def options; end
  def process!; end
  def sanitized_from; end
  def sanitized_to; end
  def sessions; end
  def to; end
  def transfers; end
  def transport; end

  private

  def handle_error(error); end
  def normalize(argument, session); end
  def prepare_scp_transfer(from, to, session); end
  def prepare_sftp_transfer(from, to, session); end
  def prepare_transfers; end
  def session_map; end

  class << self
    def process(direction, from, to, sessions, options = T.unsafe(nil), &block); end
  end
end

class Capistrano::Transfer::SFTPTransferWrapper
  def initialize(session, &callback); end

  def [](key); end
  def []=(key, value); end
  def abort!; end
  def active?; end
  def operation; end
end

class Capistrano::TransferError < ::Capistrano::RemoteError; end

class String
  include ::Comparable
  include ::JSON::Ext::Generator::GeneratorMethods::String
  include ::MessagePack::CoreExt
  extend ::JSON::Ext::Generator::GeneratorMethods::String::Extend

  def compact; end
end

String::BLANK_RE = T.let(T.unsafe(nil), Regexp)
String::ENCODED_BLANKS = T.let(T.unsafe(nil), Concurrent::Map)