# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `aws-eventstream` gem.
# Please instead update this file by running `bin/tapioca gem aws-eventstream`.


# source://aws-eventstream//lib/aws-eventstream/decoder.rb#7
module Aws
  class << self
    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#133
    def config; end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#136
    def config=(config); end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#195
    def eager_autoload!(*args); end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#188
    def empty_connection_pools!; end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#145
    def partition(partition_name); end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#150
    def partitions; end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#126
    def shared_config; end

    # source://aws-sdk-core/3.180.3/lib/aws-sdk-core.rb#165
    def use_bundled_cert!; end
  end
end

# source://aws-eventstream//lib/aws-eventstream/decoder.rb#8
module Aws::EventStream; end

# This class provides method for decoding binary inputs into
# single or multiple messages (Aws::EventStream::Message).
#
# * {#decode} - decodes messages from an IO like object responds
#   to #read that containing binary data, returning decoded
#   Aws::EventStream::Message along the way or wrapped in an enumerator
#
# ## Examples
#
#   decoder = Aws::EventStream::Decoder.new
#
#   # decoding from IO
#   decoder.decode(io) do |message|
#     message.headers
#     # => { ... }
#     message.payload
#     # => StringIO / Tempfile
#   end
#
#   # alternatively
#   message_pool = decoder.decode(io)
#   message_pool.next
#   # => Aws::EventStream::Message
#
# * {#decode_chunk} - decodes a single message from a chunk of data,
#   returning message object followed by boolean(indicating eof status
#   of data) in an array object
#
# ## Examples
#
#   # chunk containing exactly one message data
#   message, chunk_eof = decoder.decode_chunk(chunk_str)
#   message
#   # => Aws::EventStream::Message
#   chunk_eof
#   # => true
#
#   # chunk containing a partial message
#   message, chunk_eof = decoder.decode_chunk(chunk_str)
#   message
#   # => nil
#   chunk_eof
#   # => true
#   # chunk data is saved at decoder's message_buffer
#
#   # chunk containing more that one data message
#   message, chunk_eof = decoder.decode_chunk(chunk_str)
#   message
#   # => Aws::EventStream::Message
#   chunk_eof
#   # => false
#   # extra chunk data is saved at message_buffer of the decoder
#
# source://aws-eventstream//lib/aws-eventstream/decoder.rb#63
class Aws::EventStream::Decoder
  include ::Enumerable

  # @option options
  # @param options [Hash] The initialization options.
  # @return [Decoder] a new instance of Decoder
  #
  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#83
  def initialize(options = T.unsafe(nil)); end

  # Decodes messages from a binary stream
  #
  # @param io [IO#read] An IO-like object
  #   that responds to `#read`
  # @return [Enumerable<Message>, nil] Returns a new Enumerable
  #   containing decoded messages if no block is given
  # @yieldparam message [Message]
  #
  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#96
  def decode(io, &block); end

  # Decodes a single message from a chunk of string
  #
  # @param chunk [String] A chunk of string to be decoded,
  #   chunk can contain partial event message to multiple event messages
  #   When not provided, decode data from #message_buffer
  # @return [Array<Message|nil, Boolean>] Returns single decoded message
  #   and boolean pair, the boolean flag indicates whether this chunk
  #   has been fully consumed, unused data is tracked at #message_buffer
  #
  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#114
  def decode_chunk(chunk = T.unsafe(nil)); end

  private

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#163
  def decode_context(content, header_length); end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#130
  def decode_message(raw_message); end

  # @raise [Errors::PreludeChecksumError]
  #
  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#155
  def decode_prelude(prelude); end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#171
  def extract_headers(buffer); end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#201
  def extract_payload(encoded); end

  # exposed via object.send for testing
  #
  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#122
  def message_buffer; end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#207
  def payload_stringio(encoded); end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#211
  def payload_tempfile(encoded); end

  # source://aws-eventstream//lib/aws-eventstream/decoder.rb#124
  def wrap_as_enumerator(decoded_message); end
end

# 4 bytes message crc checksum
#
# source://aws-eventstream//lib/aws-eventstream/decoder.rb#76
Aws::EventStream::Decoder::CRC32_LENGTH = T.let(T.unsafe(nil), Integer)

# source://aws-eventstream//lib/aws-eventstream/decoder.rb#67
Aws::EventStream::Decoder::ONE_MEGABYTE = T.let(T.unsafe(nil), Integer)

# bytes of prelude part, including 4 bytes of
# total message length, headers length and crc checksum of prelude
#
# source://aws-eventstream//lib/aws-eventstream/decoder.rb#72
Aws::EventStream::Decoder::PRELUDE_LENGTH = T.let(T.unsafe(nil), Integer)

# This class provides #encode method for encoding
# Aws::EventStream::Message into binary.
#
# * {#encode} - encode Aws::EventStream::Message into binary
#   when output IO-like object is provided, binary string
#   would be written to IO. If not, the encoded binary string
#   would be returned directly
#
# ## Examples
#
#   message = Aws::EventStream::Message.new(
#     headers: {
#       "foo" => Aws::EventStream::HeaderValue.new(
#         value: "bar", type: "string"
#        )
#     },
#     payload: "payload"
#   )
#   encoder = Aws::EventsStream::Encoder.new
#   file = Tempfile.new
#
#   # encode into IO ouput
#   encoder.encode(message, file)
#
#   # get encoded binary string
#   encoded_message = encoder.encode(message)
#
#   file.read == encoded_message
#   # => true
#
# source://aws-eventstream//lib/aws-eventstream/encoder.rb#38
class Aws::EventStream::Encoder
  # Encodes Aws::EventStream::Message to output IO when
  #   provided, else return the encoded binary string
  #
  # @param message [Aws::EventStream::Message]
  # @param io [IO#write, nil] An IO-like object that
  #   responds to `#write`, encoded message will be
  #   written to this IO when provided
  # @return [nil, String] when output IO is provided,
  #   encoded message will be written to that IO, nil
  #   will be returned. Else, encoded binary string is
  #   returned.
  #
  # source://aws-eventstream//lib/aws-eventstream/encoder.rb#63
  def encode(message, io = T.unsafe(nil)); end

  # Encodes headers part of an Aws::EventStream::Message
  #   into String
  #
  # @param message [Aws::EventStream::Message]
  # @return [String]
  #
  # source://aws-eventstream//lib/aws-eventstream/encoder.rb#110
  def encode_headers(message); end

  # Encodes an Aws::EventStream::Message
  #   into String
  #
  # @param message [Aws::EventStream::Message]
  # @return [String]
  #
  # source://aws-eventstream//lib/aws-eventstream/encoder.rb#79
  def encode_message(message); end

  private

  # source://aws-eventstream//lib/aws-eventstream/encoder.rb#135
  def encode_prelude(total_length, headers_length); end
end

# Maximum header length allowed (after encode) 128kb
#
# source://aws-eventstream//lib/aws-eventstream/encoder.rb#45
Aws::EventStream::Encoder::MAX_HEADERS_LENGTH = T.let(T.unsafe(nil), Integer)

# Maximum payload length allowed (after encode) 16mb
#
# source://aws-eventstream//lib/aws-eventstream/encoder.rb#48
Aws::EventStream::Encoder::MAX_PAYLOAD_LENGTH = T.let(T.unsafe(nil), Integer)

# bytes of total overhead in a message, including prelude
# and 4 bytes total message crc checksum
#
# source://aws-eventstream//lib/aws-eventstream/encoder.rb#42
Aws::EventStream::Encoder::OVERHEAD_LENGTH = T.let(T.unsafe(nil), Integer)

# source://aws-eventstream//lib/aws-eventstream/errors.rb#5
module Aws::EventStream::Errors; end

# source://aws-eventstream//lib/aws-eventstream/errors.rb#41
class Aws::EventStream::Errors::EventHeadersLengthExceedError < ::RuntimeError
  # @return [EventHeadersLengthExceedError] a new instance of EventHeadersLengthExceedError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#42
  def initialize(*args); end
end

# source://aws-eventstream//lib/aws-eventstream/errors.rb#35
class Aws::EventStream::Errors::EventPayloadLengthExceedError < ::RuntimeError
  # @return [EventPayloadLengthExceedError] a new instance of EventPayloadLengthExceedError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#36
  def initialize(*args); end
end

# Raise when insufficient bytes of a message is received
#
# source://aws-eventstream//lib/aws-eventstream/errors.rb#17
class Aws::EventStream::Errors::IncompleteMessageError < ::RuntimeError
  # @return [IncompleteMessageError] a new instance of IncompleteMessageError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#18
  def initialize(*args); end
end

# source://aws-eventstream//lib/aws-eventstream/errors.rb#29
class Aws::EventStream::Errors::MessageChecksumError < ::RuntimeError
  # @return [MessageChecksumError] a new instance of MessageChecksumError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#30
  def initialize(*args); end
end

# source://aws-eventstream//lib/aws-eventstream/errors.rb#23
class Aws::EventStream::Errors::PreludeChecksumError < ::RuntimeError
  # @return [PreludeChecksumError] a new instance of PreludeChecksumError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#24
  def initialize(*args); end
end

# Raised when reading bytes exceed buffer total bytes
#
# source://aws-eventstream//lib/aws-eventstream/errors.rb#8
class Aws::EventStream::Errors::ReadBytesExceedLengthError < ::RuntimeError
  # @return [ReadBytesExceedLengthError] a new instance of ReadBytesExceedLengthError
  #
  # source://aws-eventstream//lib/aws-eventstream/errors.rb#9
  def initialize(target_byte, total_len); end
end

# source://aws-eventstream//lib/aws-eventstream/header_value.rb#6
class Aws::EventStream::HeaderValue
  # @return [HeaderValue] a new instance of HeaderValue
  #
  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#8
  def initialize(options); end

  # @return [String] type of the header value
  #   complete type list see Aws::EventStream::Types
  #
  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#19
  def type; end

  # Returns the value of attribute value.
  #
  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#15
  def value; end

  private

  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#40
  def format_timestamp(value); end

  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#32
  def format_uuid(value); end

  # source://aws-eventstream//lib/aws-eventstream/header_value.rb#23
  def format_value(value); end
end

# source://aws-eventstream//lib/aws-eventstream/message.rb#5
class Aws::EventStream::Message
  # @return [Message] a new instance of Message
  #
  # source://aws-eventstream//lib/aws-eventstream/message.rb#7
  def initialize(options); end

  # @return [Hash] headers of a message
  #
  # source://aws-eventstream//lib/aws-eventstream/message.rb#13
  def headers; end

  # @return [IO] payload of a message, size not exceed 16MB.
  #   StringIO is returned for <= 1MB payload
  #   Tempfile is returned for > 1MB payload
  #
  # source://aws-eventstream//lib/aws-eventstream/message.rb#18
  def payload; end
end

# Message Header Value Types
#
# source://aws-eventstream//lib/aws-eventstream/types.rb#7
module Aws::EventStream::Types
  class << self
    # pack/unpack pattern, byte size, type idx
    #
    # source://aws-eventstream//lib/aws-eventstream/types.rb#25
    def pattern; end

    # source://aws-eventstream//lib/aws-eventstream/types.rb#9
    def types; end
  end
end
