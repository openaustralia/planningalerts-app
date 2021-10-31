# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `childprocess` gem.
# Please instead update this file by running `bin/tapioca gem childprocess`.

# typed: true

module ChildProcess
  class << self
    def arch; end
    def build(*args); end
    def close_on_exec(file); end
    def jruby?; end
    def linux?; end
    def logger; end
    def logger=(_arg0); end
    def new(*args); end
    def os; end
    def platform; end
    def platform_name; end
    def posix_spawn=(bool); end
    def posix_spawn?; end
    def unix?; end
    def windows?; end

    private

    def is_64_bit?; end
    def warn_once(msg); end
    def workaround_older_macosx_misreported_cpu?; end
  end
end

class ChildProcess::AbstractIO
  def _stdin=(io); end
  def inherit!; end
  def stderr; end
  def stderr=(io); end
  def stdin; end
  def stdout; end
  def stdout=(io); end

  private

  def check_type(io); end
end

class ChildProcess::AbstractProcess
  def initialize(args); end

  def alive?; end
  def crashed?; end
  def cwd; end
  def cwd=(_arg0); end
  def detach; end
  def detach=(_arg0); end
  def duplex; end
  def duplex=(_arg0); end
  def environment; end
  def exit_code; end
  def exited?; end
  def io; end
  def leader; end
  def leader=(_arg0); end
  def pid; end
  def poll_for_exit(timeout); end
  def start; end
  def started?; end
  def stop(timeout = T.unsafe(nil)); end
  def wait; end

  private

  def assert_started; end
  def detach?; end
  def duplex?; end
  def launch_process; end
  def leader?; end
  def log(*args); end
end

ChildProcess::AbstractProcess::POLL_INTERVAL = T.let(T.unsafe(nil), Float)
class ChildProcess::Error < ::StandardError; end
class ChildProcess::InvalidEnvironmentVariable < ::ChildProcess::Error; end
class ChildProcess::LaunchError < ::ChildProcess::Error; end

class ChildProcess::MissingFFIError < ::ChildProcess::Error
  def initialize; end
end

class ChildProcess::MissingPlatformError < ::ChildProcess::Error
  def initialize; end
end

class ChildProcess::SubclassResponsibility < ::ChildProcess::Error; end
class ChildProcess::TimeoutError < ::ChildProcess::Error; end
module ChildProcess::Unix; end

class ChildProcess::Unix::ForkExecProcess < ::ChildProcess::Unix::Process
  private

  def launch_process; end
  def set_env; end
end

class ChildProcess::Unix::IO < ::ChildProcess::AbstractIO
  private

  def check_type(io); end
end

class ChildProcess::Unix::Process < ::ChildProcess::AbstractProcess
  def exited?; end
  def io; end
  def pid; end
  def stop(timeout = T.unsafe(nil)); end
  def wait; end

  private

  def _pid; end
  def send_kill; end
  def send_signal(sig); end
  def send_term; end
  def set_exit_code(status); end
end

ChildProcess::VERSION = T.let(T.unsafe(nil), String)

class FFI::MemoryPointer < ::FFI::Pointer
  def initialize(*_arg0); end

  class << self
    def from_string(_arg0); end
  end
end
