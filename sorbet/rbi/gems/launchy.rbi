# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/launchy/all/launchy.rbi
#
# launchy-2.5.0

module Launchy
  def self.app_for_uri(uri); end
  def self.app_for_uri_string(s); end
  def self.application; end
  def self.application=(app); end
  def self.bug_report_message; end
  def self.debug=(d); end
  def self.debug?; end
  def self.dry_run=(dry_run); end
  def self.dry_run?; end
  def self.extract_global_options(options); end
  def self.host_os; end
  def self.host_os=(host_os); end
  def self.log(msg); end
  def self.open(uri_s, options = nil, &error_block); end
  def self.path; end
  def self.path=(path); end
  def self.reset_global_options; end
  def self.ruby_engine; end
  def self.ruby_engine=(ruby_engine); end
  def self.string_to_uri(s); end
  def self.to_bool(arg); end
end
module Launchy::Version
  def self.to_a; end
  def self.to_s; end
end
class Launchy::Argv
  def ==(other); end
  def [](idx); end
  def argv; end
  def blank?; end
  def executable?; end
  def initialize(*args); end
  def to_s; end
  def to_str; end
  def valid?; end
end
class Launchy::Cli
  def error_output(error); end
  def good_run(argv, env); end
  def initialize; end
  def options; end
  def parse(argv, env); end
  def parser; end
  def run(argv = nil, env = nil); end
end
module Launchy::DescendantTracker
  def children; end
  def find_child(method, *args); end
  def inherited(klass); end
end
class Launchy::Error < StandardError
end
class Launchy::ApplicationNotFoundError < Launchy::Error
end
class Launchy::CommandNotFoundError < Launchy::Error
end
class Launchy::ArgumentError < Launchy::Error
end
class Launchy::Application
  def find_executable(bin, *paths); end
  def host_os_family; end
  def initialize; end
  def ruby_engine; end
  def run(cmd, *args); end
  def runner; end
  def self.find_executable(bin, *paths); end
  def self.handling(uri); end
  extend Launchy::DescendantTracker
end
class Launchy::Application::Browser < Launchy::Application
  def app_list; end
  def browser_cmdline; end
  def browser_env; end
  def cmd_and_args(uri, options = nil); end
  def cygwin_app_list; end
  def darwin_app_list; end
  def nix_app_list; end
  def open(uri, options = nil); end
  def self.handles?(uri); end
  def self.schemes; end
  def windows_app_list; end
end
module Launchy::Detect
end
class Launchy::Detect::HostOs
  def default_host_os; end
  def host_os; end
  def initialize(host_os = nil); end
  def override_host_os; end
  def to_s; end
  def to_str; end
end
class Launchy::Detect::HostOsFamily
  def cygwin?; end
  def darwin?; end
  def host_os; end
  def initialize(host_os = nil); end
  def nix?; end
  def self.cygwin?; end
  def self.darwin?; end
  def self.detect(host_os = nil); end
  def self.matches?(host_os); end
  def self.nix?; end
  def self.windows?; end
  def windows?; end
  extend Launchy::DescendantTracker
end
class Launchy::Detect::HostOsFamily::NotFoundError < Launchy::Error
end
class Launchy::Detect::HostOsFamily::Windows < Launchy::Detect::HostOsFamily
  def app_list(app); end
  def self.matching_regex; end
end
class Launchy::Detect::HostOsFamily::Darwin < Launchy::Detect::HostOsFamily
  def app_list(app); end
  def self.matching_regex; end
end
class Launchy::Detect::HostOsFamily::Nix < Launchy::Detect::HostOsFamily
  def app_list(app); end
  def self.matching_regex; end
end
class Launchy::Detect::HostOsFamily::Cygwin < Launchy::Detect::HostOsFamily
  def app_list(app); end
  def self.matching_regex; end
end
class Launchy::Detect::RubyEngine
  def initialize(ruby_engine = nil); end
  def ruby_engine; end
  def self.detect(ruby_engine = nil); end
  def self.is_current_engine?(ruby_engine); end
  def self.jruby?; end
  def self.macruby?; end
  def self.mri?; end
  def self.rbx?; end
  def self.ruby_engine_error_message(ruby_engine); end
  def to_s; end
  extend Launchy::DescendantTracker
end
class Launchy::Detect::RubyEngine::NotFoundError < Launchy::Error
end
class Launchy::Detect::RubyEngine::Mri < Launchy::Detect::RubyEngine
  def self.engine_name; end
  def self.is_current_engine?(ruby_engine); end
end
class Launchy::Detect::RubyEngine::Jruby < Launchy::Detect::RubyEngine
  def self.engine_name; end
end
class Launchy::Detect::RubyEngine::Rbx < Launchy::Detect::RubyEngine
  def self.engine_name; end
end
class Launchy::Detect::RubyEngine::MacRuby < Launchy::Detect::RubyEngine
  def self.engine_name; end
end
class Launchy::Detect::NixDesktopEnvironment
  def self.browsers; end
  def self.detect; end
  def self.fallback_browsers; end
  extend Launchy::DescendantTracker
end
class Launchy::Detect::NixDesktopEnvironment::NotFoundError < Launchy::Error
end
class Launchy::Detect::NixDesktopEnvironment::Kde < Launchy::Detect::NixDesktopEnvironment
  def self.browser; end
  def self.is_current_desktop_environment?; end
end
class Launchy::Detect::NixDesktopEnvironment::Gnome < Launchy::Detect::NixDesktopEnvironment
  def self.browser; end
  def self.is_current_desktop_environment?; end
end
class Launchy::Detect::NixDesktopEnvironment::Xfce < Launchy::Detect::NixDesktopEnvironment
  def self.browser; end
  def self.is_current_desktop_environment?; end
end
class Launchy::Detect::NixDesktopEnvironment::Xdg < Launchy::Detect::NixDesktopEnvironment
  def self.browser; end
  def self.is_current_desktop_environment?; end
end
class Launchy::Detect::NixDesktopEnvironment::NotFound < Launchy::Detect::NixDesktopEnvironment
  def self.browser; end
  def self.is_current_desktop_environment?; end
end
class Launchy::Detect::Runner
  def commandline_normalize(cmdline); end
  def dry_run(cmd, *args); end
  def run(cmd, *args); end
  def self.detect; end
  def shell_commands(cmd, args); end
  extend Launchy::DescendantTracker
end
class Launchy::Detect::Runner::NotFoundError < Launchy::Error
end
class Launchy::Detect::Runner::Windows < Launchy::Detect::Runner
  def all_args(cmd, *args); end
  def dry_run(cmd, *args); end
  def shell_commands(cmd, *args); end
  def wet_run(cmd, *args); end
end
class Launchy::Detect::Runner::Jruby < Launchy::Detect::Runner
  def wet_run(cmd, *args); end
end
class Launchy::Detect::Runner::Forkable < Launchy::Detect::Runner
  def child_pid; end
  def close_file_descriptors; end
  def exec_or_raise(cmd, *args); end
  def wet_run(cmd, *args); end
end
class Launchy::Browser
  def _warn(msg = nil); end
  def find_caller_context(stack); end
  def report_caller_context(stack); end
  def self.run(*args); end
  def visit(url); end
end