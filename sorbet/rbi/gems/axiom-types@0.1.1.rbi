# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `axiom-types` gem.
# Please instead update this file by running `bin/tapioca gem axiom-types`.

# typed: true

module Axiom; end

module Axiom::Types
  class << self
    def finalize; end
    def infer(object); end
  end
end

class Axiom::Types::Array < ::Axiom::Types::Collection
  class << self
    private

    def base?; end
  end
end

class Axiom::Types::Boolean < ::Axiom::Types::Object
  class << self
    private

    def infer_from_primitive_class(object); end
  end
end

class Axiom::Types::Class < ::Axiom::Types::Object; end

class Axiom::Types::Collection < ::Axiom::Types::Object
  class << self
    def finalize; end
    def infer(object); end
    def member_type(*args); end

    private

    def base?; end
    def infer_from(member_type); end
    def infer_from_primitive_instance(object); end
    def match_primitive?(*_arg0); end
    def matches_member_type; end
    def new_from(member_type); end
  end
end

Axiom::Types::Contradiction = T.let(T.unsafe(nil), Proc)

class Axiom::Types::Date < ::Axiom::Types::Object
  extend ::Axiom::Types::ValueComparable

  class << self
    def maximum(*args); end
    def minimum(*args); end
  end
end

class Axiom::Types::DateTime < ::Axiom::Types::Object
  extend ::Axiom::Types::ValueComparable

  class << self
    def maximum(*args); end
    def minimum(*args); end
  end
end

Axiom::Types::DateTime::MAXIMUM_SECONDS = T.let(T.unsafe(nil), Rational)
class Axiom::Types::Decimal < ::Axiom::Types::Numeric; end

module Axiom::Types::Encodable
  def finalize; end

  private

  def ascii_compatible?; end
  def use_ascii_compatible_encoding; end
  def use_encoding; end

  class << self
    private

    def extended(descendant); end
  end
end

class Axiom::Types::Float < ::Axiom::Types::Numeric; end

class Axiom::Types::Hash < ::Axiom::Types::Object
  class << self
    def finalize; end
    def infer(object); end
    def key_type(*args); end
    def value_type(*args); end

    private

    def base?; end
    def infer_from(key_type, value_type); end
    def infer_from_primitive_instance(object); end
    def match_primitive?(*_arg0); end
    def matches_key_and_value_types; end
    def new_from(key_type, value_type); end
  end
end

class Axiom::Types::Infinity
  include ::Singleton
  include ::Comparable
  extend ::DescendantsTracker
  extend ::Axiom::Types::Options
  extend ::Singleton::SingletonClassMethods

  def <=>(other); end
  def coerce(other); end
  def succ; end

  private

  def inverse; end

  class << self
    def instance; end
    def inverse(*args); end
    def number(*args); end
  end
end

class Axiom::Types::Integer < ::Axiom::Types::Numeric; end

module Axiom::Types::LengthComparable
  def finalize; end
  def range; end

  private

  def use_length_within_range; end

  class << self
    def extended(descendant); end
  end
end

class Axiom::Types::NegativeInfinity < ::Axiom::Types::Infinity
  def <=>(_other); end

  class << self
    def instance; end
  end
end

class Axiom::Types::Numeric < ::Axiom::Types::Object
  extend ::Axiom::Types::ValueComparable

  class << self
    def maximum(*args); end
    def minimum(*args); end
  end
end

class Axiom::Types::Object < ::Axiom::Types::Type
  class << self
    def coercion_method(*args); end
    def finalize; end
    def infer(object); end
    def inspect; end
    def primitive(*args); end

    private

    def infer_from_primitive_class(object); end
    def inherits_from_primitive; end
    def match_primitive?(object); end
  end
end

module Axiom::Types::Options
  def accept_options(*new_options); end

  protected

  def setup_option(new_option); end

  private

  def accepted_options; end
  def assert_method_available(name); end
  def define_option_method(name); end
  def inherited(descendant); end
  def options; end
end

class Axiom::Types::Options::ReservedMethodError < ::ArgumentError; end

class Axiom::Types::Set < ::Axiom::Types::Collection
  class << self
    private

    def base?; end
  end
end

class Axiom::Types::String < ::Axiom::Types::Object
  extend ::Axiom::Types::Encodable
  extend ::Axiom::Types::LengthComparable

  class << self
    def encoding(*args); end
    def maximum_length(*args); end
    def minimum_length(*args); end
  end
end

class Axiom::Types::Symbol < ::Axiom::Types::Object
  extend ::Axiom::Types::Encodable
  extend ::Axiom::Types::LengthComparable

  class << self
    def encoding(*args); end
    def maximum_length(*args); end
    def minimum_length(*args); end
  end
end

Axiom::Types::Tautology = T.let(T.unsafe(nil), Proc)

class Axiom::Types::Time < ::Axiom::Types::Object
  extend ::Axiom::Types::ValueComparable

  class << self
    def maximum(*args); end
    def minimum(*args); end
  end
end

Axiom::Types::Time::MAXIMUM_SECONDS = T.let(T.unsafe(nil), Integer)
Axiom::Types::Time::MINIMUM_SECONDS = T.let(T.unsafe(nil), Integer)

class Axiom::Types::Type
  extend ::DescendantsTracker
  extend ::Axiom::Types::Options

  class << self
    def anonymous?; end
    def base; end
    def base?; end
    def constraint(constraint = T.unsafe(nil), &block); end
    def finalize; end
    def include?(object); end
    def includes(*members); end
    def infer(object); end
    def new(*args, &block); end

    private

    def add_constraint(constraint); end
  end
end

Axiom::Types::Undefined = T.let(T.unsafe(nil), Object)
Axiom::Types::VERSION = T.let(T.unsafe(nil), String)

module Axiom::Types::ValueComparable
  def finalize; end
  def range; end

  private

  def use_value_within_range; end

  class << self
    def extended(descendant); end
  end
end
