# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `eventmachine` gem.
# Please instead update this file by running `bin/tapioca gem eventmachine`.

# typed: true

class BufferedTokenizer
  def initialize(delimiter = T.unsafe(nil)); end

  def extract(data); end
  def flush; end
end

EM = EventMachine

module EventMachine
  private

  def add_oneshot_timer(_arg0); end
  def attach_fd(_arg0, _arg1); end
  def attach_sd(_arg0); end
  def bind_connect_server(_arg0, _arg1, _arg2, _arg3); end
  def close_connection(_arg0, _arg1); end
  def connect_server(_arg0, _arg1); end
  def connect_unix_server(_arg0); end
  def connection_paused?(_arg0); end
  def current_time; end
  def detach_fd(_arg0); end
  def epoll; end
  def epoll=(_arg0); end
  def epoll?; end
  def get_cipher_bits(_arg0); end
  def get_cipher_name(_arg0); end
  def get_cipher_protocol(_arg0); end
  def get_comm_inactivity_timeout(_arg0); end
  def get_connection_count; end
  def get_file_descriptor(_arg0); end
  def get_heartbeat_interval; end
  def get_idle_time(_arg0); end
  def get_max_timer_count; end
  def get_peer_cert(_arg0); end
  def get_peername(_arg0); end
  def get_pending_connect_timeout(_arg0); end
  def get_proxied_bytes(_arg0); end
  def get_simultaneous_accept_count; end
  def get_sni_hostname(_arg0); end
  def get_sock_opt(_arg0, _arg1, _arg2); end
  def get_sockname(_arg0); end
  def get_subprocess_pid(_arg0); end
  def get_subprocess_status(_arg0); end
  def initialize_event_machine; end
  def invoke_popen(_arg0); end
  def is_notify_readable(_arg0); end
  def is_notify_writable(_arg0); end
  def kqueue; end
  def kqueue=(_arg0); end
  def kqueue?; end
  def library_type; end
  def num_close_scheduled; end
  def open_udp_socket(_arg0, _arg1); end
  def pause_connection(_arg0); end
  def read_keyboard; end
  def release_machine; end
  def report_connection_error_status(_arg0); end
  def resume_connection(_arg0); end
  def run_machine; end
  def run_machine_once; end
  def run_machine_without_threads; end
  def send_data(_arg0, _arg1, _arg2); end
  def send_datagram(_arg0, _arg1, _arg2, _arg3, _arg4); end
  def send_file_data(_arg0, _arg1); end
  def set_comm_inactivity_timeout(_arg0, _arg1); end
  def set_heartbeat_interval(_arg0); end
  def set_max_timer_count(_arg0); end
  def set_notify_readable(_arg0, _arg1); end
  def set_notify_writable(_arg0, _arg1); end
  def set_pending_connect_timeout(_arg0, _arg1); end
  def set_rlimit_nofile(_arg0); end
  def set_simultaneous_accept_count(_arg0); end
  def set_sock_opt(_arg0, _arg1, _arg2, _arg3); end
  def set_timer_quantum(_arg0); end
  def set_tls_parms(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9); end
  def setuid_string(_arg0); end
  def signal_loopbreak; end
  def ssl?; end
  def start_proxy(_arg0, _arg1, _arg2, _arg3); end
  def start_tcp_server(_arg0, _arg1); end
  def start_tls(_arg0); end
  def start_unix_server(_arg0); end
  def stop; end
  def stop_proxy(_arg0); end
  def stop_tcp_server(_arg0); end
  def stopping?; end
  def unwatch_filename(_arg0); end
  def unwatch_pid(_arg0); end
  def watch_filename(_arg0); end
  def watch_pid(_arg0); end

  class << self
    def Callback(object = T.unsafe(nil), method = T.unsafe(nil), &blk); end
    def _open_file_for_writing(filename, handler = T.unsafe(nil)); end
    def add_oneshot_timer(_arg0); end
    def add_periodic_timer(*args, &block); end
    def add_shutdown_hook(&block); end
    def add_timer(*args, &block); end
    def attach(io, handler = T.unsafe(nil), *args, &blk); end
    def attach_fd(_arg0, _arg1); end
    def attach_io(io, watch_mode, handler = T.unsafe(nil), *args); end
    def attach_sd(_arg0); end
    def attach_server(sock, handler = T.unsafe(nil), *args, &block); end
    def bind_connect(bind_addr, bind_port, server, port = T.unsafe(nil), handler = T.unsafe(nil), *args); end
    def bind_connect_server(_arg0, _arg1, _arg2, _arg3); end
    def cancel_timer(timer_or_sig); end
    def cleanup_machine; end
    def close_connection(_arg0, _arg1); end
    def connect(server, port = T.unsafe(nil), handler = T.unsafe(nil), *args, &blk); end
    def connect_server(_arg0, _arg1); end
    def connect_unix_domain(socketname, *args, &blk); end
    def connect_unix_server(_arg0); end
    def connection_count; end
    def connection_paused?(_arg0); end
    def current_time; end
    def defer(op = T.unsafe(nil), callback = T.unsafe(nil), errback = T.unsafe(nil), &blk); end
    def defers_finished?; end
    def detach_fd(_arg0); end
    def disable_proxy(from); end
    def enable_proxy(from, to, bufsize = T.unsafe(nil), length = T.unsafe(nil)); end
    def epoll; end
    def epoll=(_arg0); end
    def epoll?; end
    def error_handler(cb = T.unsafe(nil), &blk); end
    def event_callback(conn_binding, opcode, data); end
    def fork_reactor(&block); end
    def get_cipher_bits(_arg0); end
    def get_cipher_name(_arg0); end
    def get_cipher_protocol(_arg0); end
    def get_comm_inactivity_timeout(_arg0); end
    def get_connection_count; end
    def get_file_descriptor(_arg0); end
    def get_heartbeat_interval; end
    def get_idle_time(_arg0); end
    def get_max_timer_count; end
    def get_max_timers; end
    def get_peer_cert(_arg0); end
    def get_peername(_arg0); end
    def get_pending_connect_timeout(_arg0); end
    def get_proxied_bytes(_arg0); end
    def get_simultaneous_accept_count; end
    def get_sni_hostname(_arg0); end
    def get_sock_opt(_arg0, _arg1, _arg2); end
    def get_sockname(_arg0); end
    def get_subprocess_pid(_arg0); end
    def get_subprocess_status(_arg0); end
    def heartbeat_interval; end
    def heartbeat_interval=(time); end
    def initialize_event_machine; end
    def invoke_popen(_arg0); end
    def is_notify_readable(_arg0); end
    def is_notify_writable(_arg0); end
    def klass_from_handler(klass = T.unsafe(nil), handler = T.unsafe(nil), *args); end
    def kqueue; end
    def kqueue=(_arg0); end
    def kqueue?; end
    def library_type; end
    def next_tick(pr = T.unsafe(nil), &block); end
    def num_close_scheduled; end
    def open_datagram_socket(address, port, handler = T.unsafe(nil), *args); end
    def open_keyboard(handler = T.unsafe(nil), *args); end
    def open_udp_socket(_arg0, _arg1); end
    def pause_connection(_arg0); end
    def popen(cmd, handler = T.unsafe(nil), *args); end
    def reactor_running?; end
    def reactor_thread; end
    def reactor_thread?; end
    def read_keyboard; end
    def reconnect(server, port, handler); end
    def release_machine; end
    def report_connection_error_status(_arg0); end
    def resume_connection(_arg0); end
    def run(blk = T.unsafe(nil), tail = T.unsafe(nil), &block); end
    def run_block(&block); end
    def run_deferred_callbacks; end
    def run_machine; end
    def run_machine_once; end
    def run_machine_without_threads; end
    def schedule(*a, &b); end
    def send_data(_arg0, _arg1, _arg2); end
    def send_datagram(_arg0, _arg1, _arg2, _arg3, _arg4); end
    def send_file_data(_arg0, _arg1); end
    def set_comm_inactivity_timeout(_arg0, _arg1); end
    def set_descriptor_table_size(n_descriptors = T.unsafe(nil)); end
    def set_effective_user(username); end
    def set_heartbeat_interval(_arg0); end
    def set_max_timer_count(_arg0); end
    def set_max_timers(ct); end
    def set_notify_readable(_arg0, _arg1); end
    def set_notify_writable(_arg0, _arg1); end
    def set_pending_connect_timeout(_arg0, _arg1); end
    def set_quantum(mills); end
    def set_rlimit_nofile(_arg0); end
    def set_simultaneous_accept_count(_arg0); end
    def set_sock_opt(_arg0, _arg1, _arg2, _arg3); end
    def set_timer_quantum(_arg0); end
    def set_tls_parms(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9); end
    def setuid_string(_arg0); end
    def signal_loopbreak; end
    def spawn(&block); end
    def spawn_threadpool; end
    def ssl?; end
    def start_proxy(_arg0, _arg1, _arg2, _arg3); end
    def start_server(server, port = T.unsafe(nil), handler = T.unsafe(nil), *args, &block); end
    def start_tcp_server(_arg0, _arg1); end
    def start_tls(_arg0); end
    def start_unix_domain_server(filename, *args, &block); end
    def start_unix_server(_arg0); end
    def stop; end
    def stop_event_loop; end
    def stop_proxy(_arg0); end
    def stop_server(signature); end
    def stop_tcp_server(_arg0); end
    def stopping?; end
    def system(cmd, *args, &cb); end
    def threadpool; end
    def threadpool_size; end
    def threadpool_size=(_arg0); end
    def tick_loop(*a, &b); end
    def unwatch_filename(_arg0); end
    def unwatch_pid(_arg0); end
    def watch(io, handler = T.unsafe(nil), *args, &blk); end
    def watch_file(filename, handler = T.unsafe(nil), *args); end
    def watch_filename(_arg0); end
    def watch_pid(_arg0); end
    def watch_process(pid, handler = T.unsafe(nil), *args); end
    def yield(&block); end
    def yield_and_notify(&block); end
  end
end

class EventMachine::Channel
  def initialize; end

  def <<(*items); end
  def num_subscribers; end
  def pop(*a, &b); end
  def push(*items); end
  def subscribe(*a, &b); end
  def unsubscribe(name); end

  private

  def gen_id; end
end

class EventMachine::Completion
  include ::EventMachine::Deferrable

  def initialize; end

  def callback(*a, &b); end
  def cancel_callback(*a, &b); end
  def cancel_errback(*a, &b); end
  def cancel_timeout; end
  def change_state(state, *args); end
  def completed?; end
  def completion(*a, &b); end
  def completion_states; end
  def errback(*a, &b); end
  def fail(*args); end
  def set_deferred_failure(*args); end
  def set_deferred_status(state, *args); end
  def set_deferred_success(*args); end
  def state; end
  def stateback(state, *a, &b); end
  def succeed(*args); end
  def timeout(time, *args); end
  def value; end

  private

  def clear_dead_callbacks; end
  def execute_callbacks; end
  def execute_state_callbacks(state); end
end

class EventMachine::Connection
  def initialize(*args); end

  def associate_callback_target(_arg0); end
  def close_connection(after_writing = T.unsafe(nil)); end
  def close_connection_after_writing; end
  def comm_inactivity_timeout; end
  def comm_inactivity_timeout=(value); end
  def connection_completed; end
  def detach; end
  def error?; end
  def get_cipher_bits; end
  def get_cipher_name; end
  def get_cipher_protocol; end
  def get_idle_time; end
  def get_outbound_data_size; end
  def get_peer_cert; end
  def get_peername; end
  def get_pid; end
  def get_proxied_bytes; end
  def get_sni_hostname; end
  def get_sock_opt(level, option); end
  def get_sockname; end
  def get_status; end
  def notify_readable=(mode); end
  def notify_readable?; end
  def notify_writable=(mode); end
  def notify_writable?; end
  def original_method(_arg0); end
  def pause; end
  def paused?; end
  def pending_connect_timeout; end
  def pending_connect_timeout=(value); end
  def post_init; end
  def proxy_completed; end
  def proxy_incoming_to(conn, bufsize = T.unsafe(nil)); end
  def proxy_target_unbound; end
  def receive_data(data); end
  def reconnect(server, port); end
  def resume; end
  def send_data(data); end
  def send_datagram(data, recipient_address, recipient_port); end
  def send_file_data(filename); end
  def set_comm_inactivity_timeout(value); end
  def set_pending_connect_timeout(value); end
  def set_sock_opt(level, optname, optval); end
  def signature; end
  def signature=(_arg0); end
  def ssl_handshake_completed; end
  def ssl_verify_peer(cert); end
  def start_tls(args = T.unsafe(nil)); end
  def stop_proxying; end
  def stream_file_data(filename, args = T.unsafe(nil)); end
  def unbind; end

  class << self
    def new(sig, *args); end
  end
end

EventMachine::ConnectionAccepted = T.let(T.unsafe(nil), Integer)
EventMachine::ConnectionCompleted = T.let(T.unsafe(nil), Integer)
EventMachine::ConnectionData = T.let(T.unsafe(nil), Integer)
class EventMachine::ConnectionError < ::RuntimeError; end
class EventMachine::ConnectionNotBound < ::RuntimeError; end
EventMachine::ConnectionNotifyReadable = T.let(T.unsafe(nil), Integer)
EventMachine::ConnectionNotifyWritable = T.let(T.unsafe(nil), Integer)
EventMachine::ConnectionUnbound = T.let(T.unsafe(nil), Integer)
module EventMachine::DNS; end

class EventMachine::DNS::Request
  include ::EventMachine::Deferrable

  def initialize(socket, hostname); end

  def max_tries; end
  def max_tries=(_arg0); end
  def receive_answer(msg); end
  def retry_interval; end
  def retry_interval=(_arg0); end
  def tick; end

  private

  def id; end
  def packet; end
  def send; end
end

class EventMachine::DNS::RequestIdAlreadyUsed < ::RuntimeError; end

class EventMachine::DNS::Resolver
  class << self
    def hosts; end
    def nameserver; end
    def nameservers; end
    def nameservers=(ns); end
    def resolve(hostname); end
    def socket; end
    def windows?; end
  end
end

EventMachine::DNS::Resolver::HOSTS_FILE = T.let(T.unsafe(nil), String)

class EventMachine::DNS::Socket < ::EventMachine::Connection
  def initialize; end

  def deregister_request(id, req); end
  def nameserver; end
  def nameserver=(ns); end
  def post_init; end
  def receive_data(data); end
  def register_request(id, req); end
  def send_packet(pkt); end
  def start_timer; end
  def stop_timer; end
  def tick; end
  def unbind; end

  class << self
    def open; end
  end
end

class EventMachine::DefaultDeferrable
  include ::EventMachine::Deferrable
end

module EventMachine::Deferrable
  def callback(&block); end
  def cancel_callback(block); end
  def cancel_errback(block); end
  def cancel_timeout; end
  def errback(&block); end
  def fail(*args); end
  def set_deferred_failure(*args); end
  def set_deferred_status(status, *args); end
  def set_deferred_success(*args); end
  def succeed(*args); end
  def timeout(seconds, *args); end

  class << self
    def future(arg, cb = T.unsafe(nil), eb = T.unsafe(nil), &blk); end
  end
end

EventMachine::Deferrable::Pool = EventMachine::Pool

class EventMachine::DeferrableChildProcess < ::EventMachine::Connection
  include ::EventMachine::Deferrable

  def initialize; end

  def receive_data(data); end
  def unbind; end

  class << self
    def open(cmd); end
  end
end

EventMachine::EM_PROTO_SSLv2 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_SSLv3 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1_1 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1_2 = T.let(T.unsafe(nil), Integer)
EventMachine::ERRNOS = T.let(T.unsafe(nil), Hash)
class EventMachine::FileNotFoundException < ::Exception; end

class EventMachine::FileStreamer
  include ::EventMachine::Deferrable

  def initialize(connection, filename, args = T.unsafe(nil)); end

  def stream_one_chunk; end

  private

  def ensure_mapping_extension_is_present; end
  def stream_with_mapping(filename); end
  def stream_without_mapping(filename); end
end

EventMachine::FileStreamer::BackpressureLevel = T.let(T.unsafe(nil), Integer)
EventMachine::FileStreamer::ChunkSize = T.let(T.unsafe(nil), Integer)
EventMachine::FileStreamer::MappingThreshold = T.let(T.unsafe(nil), Integer)

class EventMachine::FileWatch < ::EventMachine::Connection
  def file_deleted; end
  def file_modified; end
  def file_moved; end
  def path; end
  def receive_data(data); end
  def stop_watching; end
end

EventMachine::FileWatch::Cdeleted = T.let(T.unsafe(nil), String)
EventMachine::FileWatch::Cmodified = T.let(T.unsafe(nil), String)
EventMachine::FileWatch::Cmoved = T.let(T.unsafe(nil), String)
class EventMachine::InvalidSignature < ::RuntimeError; end

class EventMachine::Iterator
  def initialize(list, concurrency = T.unsafe(nil)); end

  def concurrency; end
  def concurrency=(val); end
  def each(foreach = T.unsafe(nil), after = T.unsafe(nil), &blk); end
  def inject(obj, foreach, after); end
  def map(foreach, after); end

  private

  def next_item; end
  def spawn_workers; end
end

EventMachine::Iterator::Stop = T.let(T.unsafe(nil), String)
EventMachine::LoopbreakSignalled = T.let(T.unsafe(nil), Integer)
class EventMachine::NoHandlerForAcceptedConnection < ::RuntimeError; end
EventMachine::P = EventMachine::Protocols

class EventMachine::PeriodicTimer
  def initialize(interval, callback = T.unsafe(nil), &block); end

  def cancel; end
  def fire; end
  def interval; end
  def interval=(_arg0); end
  def schedule; end
end

class EventMachine::Pool
  def initialize; end

  def add(resource); end
  def contents; end
  def num_waiting; end
  def on_error(*a, &b); end
  def perform(*a, &b); end
  def remove(resource); end
  def removed?(resource); end
  def reschedule(*a, &b); end

  protected

  def completion(deferrable, resource); end
  def failure(resource); end
  def process(work, resource); end
  def requeue(resource); end
end

class EventMachine::ProcessWatch < ::EventMachine::Connection
  def pid; end
  def process_exited; end
  def process_forked; end
  def receive_data(data); end
  def stop_watching; end
end

EventMachine::ProcessWatch::Cexit = T.let(T.unsafe(nil), String)
EventMachine::ProcessWatch::Cfork = T.let(T.unsafe(nil), String)
module EventMachine::Protocols; end

class EventMachine::Protocols::HeaderAndContentProtocol < ::EventMachine::Connection
  include ::EventMachine::Protocols::LineText2

  def initialize(*args); end

  def headers_2_hash(hdrs); end
  def receive_binary_data(text); end
  def receive_line(line); end

  private

  def dispatch_request; end
  def init_for_request; end

  class << self
    def headers_2_hash(hdrs); end
  end
end

EventMachine::Protocols::HeaderAndContentProtocol::ContentLengthPattern = T.let(T.unsafe(nil), Regexp)

class EventMachine::Protocols::HttpClient < ::EventMachine::Connection
  include ::EventMachine::Deferrable

  def initialize; end

  def connection_completed; end
  def dispatch_response; end
  def post_init; end
  def receive_data(data); end
  def send_request(args); end
  def unbind; end

  private

  def parse_response_line; end

  class << self
    def request(args = T.unsafe(nil)); end
  end
end

class EventMachine::Protocols::HttpClient2 < ::EventMachine::Connection
  include ::EventMachine::Protocols::LineText2

  def initialize; end

  def connection_completed; end
  def get(args); end
  def pop_request; end
  def post(args); end
  def post_init; end
  def receive_binary_data(text); end
  def receive_line(ln); end
  def request(args); end
  def set_default_host_header(host, port, ssl); end
  def unbind; end

  class << self
    def connect(*args); end
  end
end

class EventMachine::Protocols::HttpClient2::Request
  include ::EventMachine::Deferrable

  def initialize(conn, args); end

  def content; end
  def header_lines; end
  def headers; end
  def internal_error; end
  def receive_chunk_header(ln); end
  def receive_chunk_trailer(ln); end
  def receive_chunked_text(text); end
  def receive_header_line(ln); end
  def receive_line(ln); end
  def receive_sized_text(text); end
  def receive_text(text); end
  def send_request; end
  def status; end
  def version; end

  private

  def process_header; end
end

EventMachine::Protocols::HttpClient2::Request::ChunkedRE = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::HttpClient2::Request::ClenRE = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::HttpClient2::Request::ColonRE = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::HttpClient2::Request::HttpResponseRE = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::HttpClient::MaxPostContentLength = T.let(T.unsafe(nil), Integer)

class EventMachine::Protocols::LineAndTextProtocol < ::EventMachine::Connection
  def initialize(*args); end

  def receive_data(data); end
  def set_binary_mode(size = T.unsafe(nil)); end
  def unbind; end

  private

  def lbp_init_line_state; end
end

EventMachine::Protocols::LineAndTextProtocol::MaxBinaryLength = T.let(T.unsafe(nil), Integer)

module EventMachine::Protocols::LineProtocol
  def receive_data(data); end
  def receive_line(line); end
end

module EventMachine::Protocols::LineText2
  def receive_binary_data(data); end
  def receive_data(data); end
  def receive_end_of_binary_data; end
  def receive_line(ln); end
  def set_binary_mode(size = T.unsafe(nil)); end
  def set_delimiter(delim); end
  def set_line_mode(data = T.unsafe(nil)); end
  def set_text_mode(size = T.unsafe(nil)); end
  def unbind; end
end

EventMachine::Protocols::LineText2::MaxBinaryLength = T.let(T.unsafe(nil), Integer)

module EventMachine::Protocols::Memcache
  include ::EventMachine::Deferrable

  def initialize(host, port = T.unsafe(nil)); end

  def connection_completed; end
  def del(key, expires = T.unsafe(nil), &cb); end
  def delete(key, expires = T.unsafe(nil), &cb); end
  def get(*keys); end
  def get_hash(*keys); end
  def process_cmd(line); end
  def receive_data(data); end
  def set(key, val, exptime = T.unsafe(nil), &cb); end
  def unbind; end

  private

  def send_cmd(cmd, key, flags = T.unsafe(nil), exptime = T.unsafe(nil), bytes = T.unsafe(nil), noreply = T.unsafe(nil)); end

  class << self
    def connect(host = T.unsafe(nil), port = T.unsafe(nil)); end
  end
end

EventMachine::Protocols::Memcache::Cdeleted = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cdelimiter = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cempty = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cend = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cerror = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cstored = T.let(T.unsafe(nil), String)
EventMachine::Protocols::Memcache::Cunknown = T.let(T.unsafe(nil), String)
class EventMachine::Protocols::Memcache::ParserError < ::StandardError; end

module EventMachine::Protocols::ObjectProtocol
  def receive_data(data); end
  def receive_object(obj); end
  def send_object(obj); end
  def serializer; end
end

module EventMachine::Protocols::SASLauth
  def post_init; end
  def receive_data(data); end
  def validate(username, psw, sysname, realm); end
end

EventMachine::Protocols::SASLauth::MaxFieldSize = T.let(T.unsafe(nil), Integer)

module EventMachine::Protocols::SASLauthclient
  def post_init; end
  def receive_data(data); end
  def validate?(username, psw, sysname = T.unsafe(nil), realm = T.unsafe(nil)); end
end

EventMachine::Protocols::SASLauthclient::MaxFieldSize = T.let(T.unsafe(nil), Integer)

class EventMachine::Protocols::SmtpClient < ::EventMachine::Connection
  include ::EventMachine::Deferrable
  include ::EventMachine::Protocols::LineText2

  def initialize; end

  def args=(_arg0); end
  def connection_completed; end
  def post_init; end
  def receive_line(ln); end
  def unbind; end

  private

  def escape_leading_dots(s); end
  def invoke_auth; end
  def invoke_data; end
  def invoke_ehlo_over_tls; end
  def invoke_error; end
  def invoke_internal_error(msg = T.unsafe(nil)); end
  def invoke_mail_from; end
  def invoke_rcpt_to; end
  def invoke_starttls; end
  def receive_auth_response; end
  def receive_data_response; end
  def receive_ehlo_over_tls_response; end
  def receive_ehlo_response; end
  def receive_mail_from_response; end
  def receive_message_response; end
  def receive_rcpt_to_response; end
  def receive_signon; end
  def receive_starttls_response; end
  def send_ehlo; end

  class << self
    def send(args = T.unsafe(nil)); end
  end
end

class EventMachine::Protocols::SmtpServer < ::EventMachine::Connection
  include ::EventMachine::Protocols::LineText2

  def initialize(*args); end

  def connection_ended; end
  def get_server_domain; end
  def get_server_greeting; end
  def init_protocol_state; end
  def parms=(parms = T.unsafe(nil)); end
  def post_init; end
  def process_auth(str); end
  def process_auth_line(line); end
  def process_data; end
  def process_data_line(ln); end
  def process_ehlo(domain); end
  def process_expn; end
  def process_helo(domain); end
  def process_help; end
  def process_mail_from(sender); end
  def process_noop; end
  def process_quit; end
  def process_rcpt_to(rcpt); end
  def process_rset; end
  def process_starttls; end
  def process_unknown; end
  def process_vrfy; end
  def receive_data_chunk(data); end
  def receive_data_command; end
  def receive_ehlo_domain(domain); end
  def receive_line(ln); end
  def receive_message; end
  def receive_plain_auth(user, password); end
  def receive_recipient(rcpt); end
  def receive_reset; end
  def receive_sender(sender); end
  def receive_transaction; end
  def reset_protocol_state; end
  def send_server_greeting; end
  def unbind; end

  class << self
    def parms=(parms = T.unsafe(nil)); end
  end
end

EventMachine::Protocols::SmtpServer::AuthRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::DataRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::EhloRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::ExpnRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::HeloRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::HelpRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::MailFromRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::NoopRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::QuitRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::RcptToRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::RsetRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::StarttlsRegex = T.let(T.unsafe(nil), Regexp)
EventMachine::Protocols::SmtpServer::VrfyRegex = T.let(T.unsafe(nil), Regexp)

class EventMachine::Protocols::Socks4 < ::EventMachine::Connection
  def initialize(host, port); end

  def restore_methods; end
  def setup_methods; end
  def socks_post_init; end
  def socks_receive_data(data); end
end

module EventMachine::Protocols::Stomp
  include ::EventMachine::Protocols::LineText2

  def ack(msgid); end
  def connect(parms = T.unsafe(nil)); end
  def init_message_reader; end
  def receive_binary_data(data); end
  def receive_line(line); end
  def receive_msg(msg); end
  def send(destination, body, parms = T.unsafe(nil)); end
  def send_frame(verb, headers = T.unsafe(nil), body = T.unsafe(nil)); end
  def subscribe(dest, ack = T.unsafe(nil)); end
end

class EventMachine::Protocols::Stomp::Message
  def initialize; end

  def body; end
  def body=(_arg0); end
  def command; end
  def command=(_arg0); end
  def consume_line(line); end
  def header; end
  def header=(_arg0); end
  def headers; end
end

class EventMachine::Protocols::TcpConnectTester < ::EventMachine::Connection
  include ::EventMachine::Deferrable

  def connection_completed; end
  def post_init; end
  def unbind; end

  class << self
    def test(host, port); end
  end
end

class EventMachine::Queue
  def initialize; end

  def <<(*items); end
  def empty?; end
  def num_waiting; end
  def pop(*a, &b); end
  def push(*items); end
  def size; end
end

class EventMachine::SpawnedProcess
  def notify(*x); end
  def resume(*x); end
  def run(*x); end
  def set_receiver(blk); end
end

EventMachine::SslHandshakeCompleted = T.let(T.unsafe(nil), Integer)
EventMachine::SslVerify = T.let(T.unsafe(nil), Integer)

class EventMachine::SystemCmd < ::EventMachine::Connection
  def initialize(cb); end

  def receive_data(data); end
  def unbind; end
end

class EventMachine::ThreadedResource
  def initialize; end

  def dispatch; end
  def shutdown; end
end

class EventMachine::TickLoop
  def initialize(*a, &b); end

  def on_stop(*a, &b); end
  def start; end
  def stop; end
  def stopped?; end

  private

  def schedule; end
end

class EventMachine::Timer
  def initialize(interval, callback = T.unsafe(nil), &block); end

  def cancel; end
end

EventMachine::TimerFired = T.let(T.unsafe(nil), Integer)
class EventMachine::UnknownTimerFired < ::RuntimeError; end
class EventMachine::Unsupported < ::RuntimeError; end
EventMachine::VERSION = T.let(T.unsafe(nil), String)

class EventMachine::YieldBlockFromSpawnedProcess
  def initialize(block, notify); end

  def pull_out_yield_block; end
end

class StringIO < ::Data
  include ::Enumerable
end
