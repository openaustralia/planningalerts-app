# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `em-websocket` gem.
# Please instead update this file by running `bin/tapioca gem em-websocket`.

# source://em-websocket//lib/em-websocket/debugger.rb#1
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
    # source://eventmachine/1.2.7/lib/em/callback.rb#47
    def Callback(object = T.unsafe(nil), method = T.unsafe(nil), &blk); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1563
    def _open_file_for_writing(filename, handler = T.unsafe(nil)); end

    def add_oneshot_timer(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#351
    def add_periodic_timer(*args, &block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#291
    def add_shutdown_hook(&block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#323
    def add_timer(*args, &block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#741
    def attach(io, handler = T.unsafe(nil), *args, &blk); end

    def attach_fd(_arg0, _arg1); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#746
    def attach_io(io, watch_mode, handler = T.unsafe(nil), *args); end

    def attach_sd(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#541
    def attach_server(sock, handler = T.unsafe(nil), *args, &block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#661
    def bind_connect(bind_addr, bind_port, server, port = T.unsafe(nil), handler = T.unsafe(nil), *args); end

    def bind_connect_server(_arg0, _arg1, _arg2, _arg3); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#363
    def cancel_timer(timer_or_sig); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#261
    def cleanup_machine; end

    def close_connection(_arg0, _arg1); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#631
    def connect(server, port = T.unsafe(nil), handler = T.unsafe(nil), *args, &blk); end

    def connect_server(_arg0, _arg1); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#813
    def connect_unix_domain(socketname, *args, &blk); end

    def connect_unix_server(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#955
    def connection_count; end

    def connection_paused?(_arg0); end
    def current_time; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1043
    def defer(op = T.unsafe(nil), callback = T.unsafe(nil), errback = T.unsafe(nil), &blk); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1095
    def defers_finished?; end

    def detach_fd(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1440
    def disable_proxy(from); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1430
    def enable_proxy(from, to, bufsize = T.unsafe(nil), length = T.unsafe(nil)); end

    def epoll; end
    def epoll=(_arg0); end
    def epoll?; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1363
    def error_handler(cb = T.unsafe(nil), &blk); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1463
    def event_callback(conn_binding, opcode, data); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#243
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

    # source://eventmachine/1.2.7/lib/eventmachine.rb#924
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

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1449
    def heartbeat_interval; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1458
    def heartbeat_interval=(time); end

    def initialize_event_machine; end
    def invoke_popen(_arg0); end
    def is_notify_readable(_arg0); end
    def is_notify_writable(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1574
    def klass_from_handler(klass = T.unsafe(nil), handler = T.unsafe(nil), *args); end

    def kqueue; end
    def kqueue=(_arg0); end
    def kqueue?; end
    def library_type; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1121
    def next_tick(pr = T.unsafe(nil), &block); end

    def num_close_scheduled; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#872
    def open_datagram_socket(address, port, handler = T.unsafe(nil), *args); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1235
    def open_keyboard(handler = T.unsafe(nil), *args); end

    def open_udp_socket(_arg0, _arg1); end
    def pause_connection(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1198
    def popen(cmd, handler = T.unsafe(nil), *args); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1227
    def reactor_running?; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#79
    def reactor_thread; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#227
    def reactor_thread?; end

    def read_keyboard; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#781
    def reconnect(server, port, handler); end

    def release_machine; end
    def report_connection_error_status(_arg0); end
    def resume_connection(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#149
    def run(blk = T.unsafe(nil), tail = T.unsafe(nil), &block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#218
    def run_block(&block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#967
    def run_deferred_callbacks; end

    def run_machine; end
    def run_machine_once; end
    def run_machine_without_threads; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#233
    def schedule(*a, &b); end

    def send_data(_arg0, _arg1, _arg2); end
    def send_datagram(_arg0, _arg1, _arg2, _arg3, _arg4); end
    def send_file_data(_arg0, _arg1); end
    def set_comm_inactivity_timeout(_arg0, _arg1); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1168
    def set_descriptor_table_size(n_descriptors = T.unsafe(nil)); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1149
    def set_effective_user(username); end

    def set_heartbeat_interval(_arg0); end
    def set_max_timer_count(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#917
    def set_max_timers(ct); end

    def set_notify_readable(_arg0, _arg1); end
    def set_notify_writable(_arg0, _arg1); end
    def set_pending_connect_timeout(_arg0, _arg1); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#902
    def set_quantum(mills); end

    def set_rlimit_nofile(_arg0); end
    def set_simultaneous_accept_count(_arg0); end
    def set_sock_opt(_arg0, _arg1, _arg2, _arg3); end
    def set_timer_quantum(_arg0); end
    def set_tls_parms(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9); end
    def setuid_string(_arg0); end
    def signal_loopbreak; end

    # source://eventmachine/1.2.7/lib/em/spawnable.rb#69
    def spawn(&block); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1065
    def spawn_threadpool; end

    def ssl?; end
    def start_proxy(_arg0, _arg1, _arg2, _arg3); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#517
    def start_server(server, port = T.unsafe(nil), handler = T.unsafe(nil), *args, &block); end

    def start_tcp_server(_arg0, _arg1); end
    def start_tls(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#561
    def start_unix_domain_server(filename, *args, &block); end

    def start_unix_server(_arg0); end
    def stop; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#417
    def stop_event_loop; end

    def stop_proxy(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#551
    def stop_server(signature); end

    def stop_tcp_server(_arg0); end
    def stopping?; end

    # source://eventmachine/1.2.7/lib/em/processes.rb#112
    def system(cmd, *args, &cb); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1105
    def threadpool; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1109
    def threadpool_size; end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1109
    def threadpool_size=(_arg0); end

    # source://eventmachine/1.2.7/lib/em/tick_loop.rb#3
    def tick_loop(*a, &b); end

    def unwatch_filename(_arg0); end
    def unwatch_pid(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#731
    def watch(io, handler = T.unsafe(nil), *args, &blk); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1309
    def watch_file(filename, handler = T.unsafe(nil), *args); end

    def watch_filename(_arg0); end
    def watch_pid(_arg0); end

    # source://eventmachine/1.2.7/lib/eventmachine.rb#1340
    def watch_process(pid, handler = T.unsafe(nil), *args); end

    # source://eventmachine/1.2.7/lib/em/spawnable.rb#76
    def yield(&block); end

    # source://eventmachine/1.2.7/lib/em/spawnable.rb#81
    def yield_and_notify(&block); end
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
EventMachine::EM_PROTO_SSLv2 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_SSLv3 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1_1 = T.let(T.unsafe(nil), Integer)
EventMachine::EM_PROTO_TLSv1_2 = T.let(T.unsafe(nil), Integer)

# source://eventmachine/1.2.7/lib/eventmachine.rb#90
EventMachine::ERRNOS = T.let(T.unsafe(nil), Hash)

class EventMachine::InvalidSignature < ::RuntimeError; end
EventMachine::LoopbreakSignalled = T.let(T.unsafe(nil), Integer)
class EventMachine::NoHandlerForAcceptedConnection < ::RuntimeError; end

# source://eventmachine/1.2.7/lib/eventmachine.rb#1601
EventMachine::P = EventMachine::Protocols

EventMachine::SslHandshakeCompleted = T.let(T.unsafe(nil), Integer)
EventMachine::SslVerify = T.let(T.unsafe(nil), Integer)
EventMachine::TimerFired = T.let(T.unsafe(nil), Integer)
class EventMachine::UnknownTimerFired < ::RuntimeError; end
class EventMachine::Unsupported < ::RuntimeError; end

# source://eventmachine/1.2.7/lib/em/version.rb#2
EventMachine::VERSION = T.let(T.unsafe(nil), String)

# source://em-websocket//lib/em-websocket/debugger.rb#2
module EventMachine::WebSocket
  class << self
    # Returns the value of attribute close_timeout.
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#5
    def close_timeout; end

    # Sets the attribute close_timeout
    #
    # @param value the value to set the attribute close_timeout to.
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#5
    def close_timeout=(_arg0); end

    # Returns the value of attribute max_frame_size.
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#4
    def max_frame_size; end

    # Sets the attribute max_frame_size
    #
    # @param value the value to set the attribute max_frame_size to.
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#4
    def max_frame_size=(_arg0); end

    # Start WebSocket server inside eventmachine run loop
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#44
    def run(options); end

    # Start WebSocket server, including starting eventmachine run loop
    #
    # source://em-websocket//lib/em-websocket/websocket.rb#33
    def start(options, &blk); end

    # source://em-websocket//lib/em-websocket/websocket.rb#51
    def stop; end
  end
end

# source://em-websocket//lib/em-websocket/close03.rb#3
module EventMachine::WebSocket::Close03
  # source://em-websocket//lib/em-websocket/close03.rb#4
  def close_websocket(code, body); end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/close03.rb#11
  def supports_close_codes?; end
end

# source://em-websocket//lib/em-websocket/close05.rb#3
module EventMachine::WebSocket::Close05
  # source://em-websocket//lib/em-websocket/close05.rb#4
  def close_websocket(code, body); end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/close05.rb#11
  def supports_close_codes?; end
end

# source://em-websocket//lib/em-websocket/close06.rb#3
module EventMachine::WebSocket::Close06
  # source://em-websocket//lib/em-websocket/close06.rb#4
  def close_websocket(code, body); end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/close06.rb#16
  def supports_close_codes?; end
end

# source://em-websocket//lib/em-websocket/close75.rb#3
module EventMachine::WebSocket::Close75
  # source://em-websocket//lib/em-websocket/close75.rb#4
  def close_websocket(code, body); end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/close75.rb#8
  def supports_close_codes?; end
end

# source://em-websocket//lib/em-websocket/connection.rb#3
class EventMachine::WebSocket::Connection < ::EventMachine::Connection
  include ::EventMachine::WebSocket::Debugger

  # @return [Connection] a new instance of Connection
  #
  # source://em-websocket//lib/em-websocket/connection.rb#41
  def initialize(options); end

  # Use this method to close the websocket connection cleanly
  # This sends a close frame and waits for acknowlegement before closing
  # the connection
  #
  # source://em-websocket//lib/em-websocket/connection.rb#58
  def close(code = T.unsafe(nil), body = T.unsafe(nil)); end

  # source://em-websocket//lib/em-websocket/connection.rb#286
  def close_timeout; end

  # Use this method to close the websocket connection cleanly
  # This sends a close frame and waits for acknowlegement before closing
  # the connection
  # Deprecated, to be removed in version 0.6
  #
  # source://em-websocket//lib/em-websocket/connection.rb#58
  def close_websocket(code = T.unsafe(nil), body = T.unsafe(nil)); end

  # source://em-websocket//lib/em-websocket/connection.rb#112
  def dispatch(data); end

  # Returns the maximum frame size which this connection is configured to
  # accept. This can be set globally or on a per connection basis, and
  # defaults to a value of 10MB if not set.
  #
  # The behaviour when a too large frame is received varies by protocol,
  # but in the newest protocols the connection will be closed with the
  # correct close code (1009) immediately after receiving the frame header
  #
  # source://em-websocket//lib/em-websocket/connection.rb#282
  def max_frame_size; end

  # Sets the attribute max_frame_size
  #
  # @param value the value to set the attribute max_frame_size to.
  #
  # source://em-websocket//lib/em-websocket/connection.rb#6
  def max_frame_size=(_arg0); end

  # source://em-websocket//lib/em-websocket/connection.rb#13
  def onbinary(&blk); end

  # source://em-websocket//lib/em-websocket/connection.rb#10
  def onclose(&blk); end

  # source://em-websocket//lib/em-websocket/connection.rb#11
  def onerror(&blk); end

  # source://em-websocket//lib/em-websocket/connection.rb#12
  def onmessage(&blk); end

  # define WebSocket callbacks
  #
  # source://em-websocket//lib/em-websocket/connection.rb#9
  def onopen(&blk); end

  # source://em-websocket//lib/em-websocket/connection.rb#14
  def onping(&blk); end

  # source://em-websocket//lib/em-websocket/connection.rb#15
  def onpong(&blk); end

  # Send a ping to the client. The client must respond with a pong.
  #
  # In the case that the client is running a WebSocket draft < 01, false
  # is returned since ping & pong are not supported
  #
  # source://em-websocket//lib/em-websocket/connection.rb#225
  def ping(body = T.unsafe(nil)); end

  # Test whether the connection is pingable (i.e. the WebSocket draft in
  # use is >= 01)
  #
  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/connection.rb#249
  def pingable?; end

  # Send an unsolicited pong message, as allowed by the protocol. The
  # client is not expected to respond to this message.
  #
  # em-websocket automatically takes care of sending pong replies to
  # incoming ping messages, as the protocol demands.
  #
  # source://em-websocket//lib/em-websocket/connection.rb#239
  def pong(body = T.unsafe(nil)); end

  # source://em-websocket//lib/em-websocket/connection.rb#69
  def post_init; end

  # source://em-websocket//lib/em-websocket/connection.rb#73
  def receive_data(data); end

  # Returns the IP address for the remote peer
  #
  # source://em-websocket//lib/em-websocket/connection.rb#270
  def remote_ip; end

  # Send a WebSocket text frame.
  #
  # A WebSocketError may be raised if the connection is in an opening or a
  # closing state, or if the passed in data is not valid UTF-8
  #
  # source://em-websocket//lib/em-websocket/connection.rb#182
  def send(data); end

  # Send a WebSocket binary frame.
  #
  # source://em-websocket//lib/em-websocket/connection.rb#212
  def send_binary(data); end

  # source://em-websocket//lib/em-websocket/connection.rb#92
  def send_data(data); end

  # source://em-websocket//lib/em-websocket/connection.rb#161
  def send_flash_cross_domain_file; end

  # source://em-websocket//lib/em-websocket/connection.rb#144
  def send_healthcheck_response; end

  # Send a WebSocket text frame.
  #
  # A WebSocketError may be raised if the connection is in an opening or a
  # closing state, or if the passed in data is not valid UTF-8
  #
  # source://em-websocket//lib/em-websocket/connection.rb#182
  def send_text(data); end

  # source://em-websocket//lib/em-websocket/connection.rb#265
  def state; end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/connection.rb#257
  def supports_close_codes?; end

  # source://em-websocket//lib/em-websocket/connection.rb#20
  def trigger_on_binary(msg); end

  # source://em-websocket//lib/em-websocket/connection.rb#26
  def trigger_on_close(event = T.unsafe(nil)); end

  # source://em-websocket//lib/em-websocket/connection.rb#35
  def trigger_on_error(reason); end

  # source://em-websocket//lib/em-websocket/connection.rb#17
  def trigger_on_message(msg); end

  # source://em-websocket//lib/em-websocket/connection.rb#23
  def trigger_on_open(handshake); end

  # source://em-websocket//lib/em-websocket/connection.rb#29
  def trigger_on_ping(data); end

  # source://em-websocket//lib/em-websocket/connection.rb#32
  def trigger_on_pong(data); end

  # source://em-websocket//lib/em-websocket/connection.rb#102
  def unbind; end

  private

  # As definited in draft 06 7.2.2, some failures require that the server
  # abort the websocket connection rather than close cleanly
  #
  # source://em-websocket//lib/em-websocket/connection.rb#294
  def abort(reason); end

  # Allow applications to close with 1000, 1003, 1008, 1011, 3xxx or 4xxx.
  #
  # em-websocket uses a few other codes internally which should not be
  # used by applications
  #
  # Browsers generally allow connections to be closed with code 1000,
  # 3xxx, and 4xxx. em-websocket allows closing with a few other codes
  # which seem reasonable (for discussion see
  # https://github.com/igrigorik/em-websocket/issues/98)
  #
  # Usage from the rfc:
  #
  # 1000 indicates a normal closure
  #
  # 1003 indicates that an endpoint is terminating the connection
  # because it has received a type of data it cannot accept
  #
  # 1008 indicates that an endpoint is terminating the connection because
  # it has received a message that violates its policy
  #
  # 1011 indicates that a server is terminating the connection because it
  # encountered an unexpected condition that prevented it from fulfilling
  # the request
  #
  # Status codes in the range 3000-3999 are reserved for use by libraries,
  # frameworks, and applications
  #
  # Status codes in the range 4000-4999 are reserved for private use and
  # thus can't be registered
  #
  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/connection.rb#339
  def acceptable_close_code?(code); end

  # source://em-websocket//lib/em-websocket/connection.rb#299
  def close_websocket_private(code, body); end
end

# source://em-websocket//lib/em-websocket/connection.rb#175
EventMachine::WebSocket::Connection::BINARY = T.let(T.unsafe(nil), Encoding)

# Cache encodings since it's moderately expensive to look them up each time
#
# source://em-websocket//lib/em-websocket/connection.rb#173
EventMachine::WebSocket::Connection::ENCODING_SUPPORTED = T.let(T.unsafe(nil), TrueClass)

# source://em-websocket//lib/em-websocket/connection.rb#174
EventMachine::WebSocket::Connection::UTF8 = T.let(T.unsafe(nil), Encoding)

# source://em-websocket//lib/em-websocket/debugger.rb#3
module EventMachine::WebSocket::Debugger
  private

  # source://em-websocket//lib/em-websocket/debugger.rb#7
  def debug(*data); end
end

# source://em-websocket//lib/em-websocket/framing03.rb#5
module EventMachine::WebSocket::Framing03
  # source://em-websocket//lib/em-websocket/framing03.rb#6
  def initialize_framing; end

  # source://em-websocket//lib/em-websocket/framing03.rb#12
  def process_data; end

  # source://em-websocket//lib/em-websocket/framing03.rb#98
  def send_frame(frame_type, application_data); end

  # source://em-websocket//lib/em-websocket/framing03.rb#128
  def send_text_frame(data); end

  private

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/framing03.rb#157
  def data_frame?(type); end

  # This allows flipping the more bit to fin for draft 04
  #
  # source://em-websocket//lib/em-websocket/framing03.rb#135
  def fin; end

  # source://em-websocket//lib/em-websocket/framing03.rb#153
  def opcode_to_type(opcode); end

  # source://em-websocket//lib/em-websocket/framing03.rb#149
  def type_to_opcode(frame_type); end
end

# Frames are either data frames or control frames
#
# source://em-websocket//lib/em-websocket/framing03.rb#147
EventMachine::WebSocket::Framing03::DATA_FRAMES = T.let(T.unsafe(nil), Array)

# source://em-websocket//lib/em-websocket/framing03.rb#137
EventMachine::WebSocket::Framing03::FRAME_TYPES = T.let(T.unsafe(nil), Hash)

# source://em-websocket//lib/em-websocket/framing03.rb#145
EventMachine::WebSocket::Framing03::FRAME_TYPES_INVERSE = T.let(T.unsafe(nil), Hash)

# The only difference between draft 03 framing and draft 04 framing is
# that the MORE bit has been changed to a FIN bit
#
# source://em-websocket//lib/em-websocket/framing04.rb#7
module EventMachine::WebSocket::Framing04
  include ::EventMachine::WebSocket::Framing03

  private

  # source://em-websocket//lib/em-websocket/framing04.rb#12
  def fin; end
end

# source://em-websocket//lib/em-websocket/framing05.rb#5
module EventMachine::WebSocket::Framing05
  # source://em-websocket//lib/em-websocket/framing05.rb#6
  def initialize_framing; end

  # source://em-websocket//lib/em-websocket/framing05.rb#12
  def process_data; end

  # source://em-websocket//lib/em-websocket/framing05.rb#102
  def send_frame(frame_type, application_data); end

  # source://em-websocket//lib/em-websocket/framing05.rb#132
  def send_text_frame(data); end

  private

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/framing05.rb#158
  def data_frame?(type); end

  # source://em-websocket//lib/em-websocket/framing05.rb#154
  def opcode_to_type(opcode); end

  # source://em-websocket//lib/em-websocket/framing05.rb#150
  def type_to_opcode(frame_type); end
end

# Frames are either data frames or control frames
#
# source://em-websocket//lib/em-websocket/framing05.rb#148
EventMachine::WebSocket::Framing05::DATA_FRAMES = T.let(T.unsafe(nil), Array)

# source://em-websocket//lib/em-websocket/framing05.rb#138
EventMachine::WebSocket::Framing05::FRAME_TYPES = T.let(T.unsafe(nil), Hash)

# source://em-websocket//lib/em-websocket/framing05.rb#146
EventMachine::WebSocket::Framing05::FRAME_TYPES_INVERSE = T.let(T.unsafe(nil), Hash)

# source://em-websocket//lib/em-websocket/framing07.rb#5
module EventMachine::WebSocket::Framing07
  # source://em-websocket//lib/em-websocket/framing07.rb#7
  def initialize_framing; end

  # source://em-websocket//lib/em-websocket/framing07.rb#13
  def process_data; end

  # source://em-websocket//lib/em-websocket/framing07.rb#124
  def send_frame(frame_type, application_data); end

  # source://em-websocket//lib/em-websocket/framing07.rb#154
  def send_text_frame(data); end

  private

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/framing07.rb#180
  def data_frame?(type); end

  # source://em-websocket//lib/em-websocket/framing07.rb#176
  def opcode_to_type(opcode); end

  # source://em-websocket//lib/em-websocket/framing07.rb#172
  def type_to_opcode(frame_type); end
end

# Frames are either data frames or control frames
#
# source://em-websocket//lib/em-websocket/framing07.rb#170
EventMachine::WebSocket::Framing07::DATA_FRAMES = T.let(T.unsafe(nil), Array)

# source://em-websocket//lib/em-websocket/framing07.rb#160
EventMachine::WebSocket::Framing07::FRAME_TYPES = T.let(T.unsafe(nil), Hash)

# source://em-websocket//lib/em-websocket/framing07.rb#168
EventMachine::WebSocket::Framing07::FRAME_TYPES_INVERSE = T.let(T.unsafe(nil), Hash)

# source://em-websocket//lib/em-websocket/framing76.rb#5
module EventMachine::WebSocket::Framing76
  # source://em-websocket//lib/em-websocket/framing76.rb#6
  def initialize_framing; end

  # source://em-websocket//lib/em-websocket/framing76.rb#10
  def process_data; end

  # frames need to start with 0x00-0x7f byte and end with
  # an 0xFF byte. Per spec, we can also set the first
  # byte to a value betweent 0x80 and 0xFF, followed by
  # a leading length indicator
  #
  # source://em-websocket//lib/em-websocket/framing76.rb#96
  def send_text_frame(data); end
end

# source://em-websocket//lib/em-websocket/handler.rb#3
class EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Debugger

  # @return [Handler] a new instance of Handler
  #
  # source://em-websocket//lib/em-websocket/handler.rb#37
  def initialize(connection, debug = T.unsafe(nil)); end

  # source://em-websocket//lib/em-websocket/handler.rb#52
  def close_websocket(code, body); end

  # This corresponds to "Fail the WebSocket Connection" in the spec.
  #
  # source://em-websocket//lib/em-websocket/handler.rb#66
  def fail_websocket(e); end

  # source://em-websocket//lib/em-websocket/handler.rb#86
  def ping; end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/handler.rb#91
  def pingable?; end

  # source://em-websocket//lib/em-websocket/handler.rb#45
  def receive_data(data); end

  # Returns the value of attribute request.
  #
  # source://em-websocket//lib/em-websocket/handler.rb#35
  def request; end

  # Used to avoid un-acked and unclosed remaining open indefinitely
  #
  # source://em-websocket//lib/em-websocket/handler.rb#57
  def start_close_timeout; end

  # Returns the value of attribute state.
  #
  # source://em-websocket//lib/em-websocket/handler.rb#35
  def state; end

  # source://em-websocket//lib/em-websocket/handler.rb#73
  def unbind; end

  class << self
    # source://em-websocket//lib/em-websocket/handler.rb#4
    def klass_factory(version); end
  end
end

# source://em-websocket//lib/em-websocket/handler03.rb#3
class EventMachine::WebSocket::Handler03 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing03
  include ::EventMachine::WebSocket::MessageProcessor03
  include ::EventMachine::WebSocket::Close03
end

# source://em-websocket//lib/em-websocket/handler05.rb#3
class EventMachine::WebSocket::Handler05 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing05
  include ::EventMachine::WebSocket::MessageProcessor03
  include ::EventMachine::WebSocket::Close05
end

# source://em-websocket//lib/em-websocket/handler06.rb#3
class EventMachine::WebSocket::Handler06 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing05
  include ::EventMachine::WebSocket::MessageProcessor06
  include ::EventMachine::WebSocket::Close06
end

# source://em-websocket//lib/em-websocket/handler07.rb#3
class EventMachine::WebSocket::Handler07 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing07
  include ::EventMachine::WebSocket::MessageProcessor06
  include ::EventMachine::WebSocket::Close06
end

# source://em-websocket//lib/em-websocket/handler08.rb#3
class EventMachine::WebSocket::Handler08 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing07
  include ::EventMachine::WebSocket::MessageProcessor06
  include ::EventMachine::WebSocket::Close06
end

# source://em-websocket//lib/em-websocket/handler13.rb#3
class EventMachine::WebSocket::Handler13 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Framing07
  include ::EventMachine::WebSocket::MessageProcessor06
  include ::EventMachine::WebSocket::Close06
end

# source://em-websocket//lib/em-websocket/handler75.rb#3
class EventMachine::WebSocket::Handler75 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Handshake75
  include ::EventMachine::WebSocket::Framing76
  include ::EventMachine::WebSocket::Close75
end

# source://em-websocket//lib/em-websocket/handler76.rb#5
class EventMachine::WebSocket::Handler76 < ::EventMachine::WebSocket::Handler
  include ::EventMachine::WebSocket::Handshake76
  include ::EventMachine::WebSocket::Framing76
  include ::EventMachine::WebSocket::Close75
end

# "\377\000" is octet version and "\xff\x00" is hex version
#
# source://em-websocket//lib/em-websocket/handler76.rb#11
EventMachine::WebSocket::Handler76::TERMINATE_STRING = T.let(T.unsafe(nil), String)

# Resposible for creating the server handshake response
#
# source://em-websocket//lib/em-websocket/handshake.rb#8
class EventMachine::WebSocket::Handshake
  include ::EventMachine::Deferrable

  # Unfortunately drafts 75 & 76 require knowledge of whether the
  # connection is being terminated as ws/wss in order to generate the
  # correct handshake response
  #
  # @return [Handshake] a new instance of Handshake
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#16
  def initialize(secure); end

  # Returns the WebSocket upgrade headers as a hash.
  #
  # Keys are strings, unmodified from the request.
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#39
  def headers; end

  # The same as headers, except that the hash keys are downcased
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#45
  def headers_downcased; end

  # Returns the WebSocket origin header if provided
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#66
  def origin; end

  # Returns the value of attribute parser.
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#11
  def parser; end

  # Returns the request path (excluding any query params)
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#51
  def path; end

  # Returns the value of attribute protocol_version.
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#11
  def protocol_version; end

  # source://em-websocket//lib/em-websocket/handshake.rb#60
  def query; end

  # Returns the query params as a string foo=bar&baz=...
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#56
  def query_string; end

  # source://em-websocket//lib/em-websocket/handshake.rb#25
  def receive_data(data); end

  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/handshake.rb#70
  def secure?; end

  private

  # source://em-websocket//lib/em-websocket/handshake.rb#76
  def process(headers, remains); end
end

# source://em-websocket//lib/em-websocket/handshake04.rb#6
module EventMachine::WebSocket::Handshake04
  class << self
    # source://em-websocket//lib/em-websocket/handshake04.rb#7
    def handshake(headers, _, __); end

    # @raise [HandshakeError]
    #
    # source://em-websocket//lib/em-websocket/handshake04.rb#31
    def validate_protocol!(protocol); end
  end
end

# source://em-websocket//lib/em-websocket/handshake75.rb#3
module EventMachine::WebSocket::Handshake75
  class << self
    # source://em-websocket//lib/em-websocket/handshake75.rb#4
    def handshake(headers, path, secure); end

    # @raise [HandshakeError]
    #
    # source://em-websocket//lib/em-websocket/handshake75.rb#22
    def validate_protocol!(protocol); end
  end
end

# source://em-websocket//lib/em-websocket/handshake76.rb#4
module EventMachine::WebSocket::Handshake76
  class << self
    # source://em-websocket//lib/em-websocket/handshake76.rb#6
    def handshake(headers, path, secure); end

    private

    # @raise [HandshakeError]
    #
    # source://em-websocket//lib/em-websocket/handshake76.rb#41
    def numbers_over_spaces(string); end

    # source://em-websocket//lib/em-websocket/handshake76.rb#33
    def solve_challenge(first, second, third); end

    # @raise [HandshakeError]
    #
    # source://em-websocket//lib/em-websocket/handshake76.rb#66
    def validate_protocol!(protocol); end
  end
end

# Used for errors that occur during WebSocket handshake
#
# source://em-websocket//lib/em-websocket/websocket.rb#15
class EventMachine::WebSocket::HandshakeError < ::EventMachine::WebSocket::WebSocketError; end

# source://em-websocket//lib/em-websocket/websocket.rb#23
class EventMachine::WebSocket::InvalidDataError < ::EventMachine::WebSocket::WSProtocolError
  # source://em-websocket//lib/em-websocket/websocket.rb#24
  def code; end
end

# source://em-websocket//lib/em-websocket/masking04.rb#4
class EventMachine::WebSocket::MaskedString < ::String
  # source://em-websocket//lib/em-websocket/masking04.rb#18
  def getbyte(index); end

  # source://em-websocket//lib/em-websocket/masking04.rb#27
  def getbytes(start_index, count); end

  # Read a 4 bit XOR mask - further requested bytes will be unmasked
  #
  # source://em-websocket//lib/em-websocket/masking04.rb#5
  def read_mask; end

  # Removes the mask, behaves like a normal string again
  #
  # source://em-websocket//lib/em-websocket/masking04.rb#14
  def unset_mask; end
end

# source://em-websocket//lib/em-websocket/message_processor_03.rb#5
module EventMachine::WebSocket::MessageProcessor03
  # source://em-websocket//lib/em-websocket/message_processor_03.rb#6
  def message(message_type, extension_data, application_data); end

  # Ping & Pong supported
  #
  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/message_processor_03.rb#42
  def pingable?; end
end

# source://em-websocket//lib/em-websocket/message_processor_06.rb#3
module EventMachine::WebSocket::MessageProcessor06
  # source://em-websocket//lib/em-websocket/message_processor_06.rb#4
  def message(message_type, extension_data, application_data); end

  # Ping & Pong supported
  #
  # @return [Boolean]
  #
  # source://em-websocket//lib/em-websocket/message_processor_06.rb#73
  def pingable?; end
end

# 1009: Message too big to process
#
# source://em-websocket//lib/em-websocket/websocket.rb#28
class EventMachine::WebSocket::WSMessageTooBigError < ::EventMachine::WebSocket::WSProtocolError
  # source://em-websocket//lib/em-websocket/websocket.rb#29
  def code; end
end

# Used for errors which should cause the connection to close.
# See RFC6455 §7.4.1 for a full description of meanings
#
# source://em-websocket//lib/em-websocket/websocket.rb#19
class EventMachine::WebSocket::WSProtocolError < ::EventMachine::WebSocket::WebSocketError
  # source://em-websocket//lib/em-websocket/websocket.rb#20
  def code; end
end

# All errors raised by em-websocket should descend from this class
#
# source://em-websocket//lib/em-websocket/websocket.rb#12
class EventMachine::WebSocket::WebSocketError < ::RuntimeError; end
