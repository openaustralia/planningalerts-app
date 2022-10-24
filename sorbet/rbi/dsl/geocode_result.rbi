# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeocodeResult`.
# Please instead update this file by running `bin/tapioca dsl GeocodeResult`.

class GeocodeResult
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  private

  sig { returns(NilClass) }
  def to_ary; end

  module CommonRelationMethods
    sig { params(block: T.nilable(T.proc.params(record: ::GeocodeResult).returns(T.untyped))).returns(T::Boolean) }
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def average(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.untyped) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T.untyped) }
    def count(column_name = nil); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def create(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::GeocodeResult]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::GeocodeResult)) }
    def fifth; end

    sig { returns(::GeocodeResult) }
    def fifth!; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def find(*args); end

    sig { params(args: T.untyped).returns(T.nilable(::GeocodeResult)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::GeocodeResult) }
    def find_by!(*args); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def find_or_initialize_by(attributes, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def first(limit = nil); end

    sig { returns(::GeocodeResult) }
    def first!; end

    sig { returns(T.nilable(::GeocodeResult)) }
    def forty_two; end

    sig { returns(::GeocodeResult) }
    def forty_two!; end

    sig { returns(T.nilable(::GeocodeResult)) }
    def fourth; end

    sig { returns(::GeocodeResult) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def last(limit = nil); end

    sig { returns(::GeocodeResult) }
    def last!; end

    sig { params(block: T.nilable(T.proc.params(record: ::GeocodeResult).returns(T.untyped))).returns(T::Boolean) }
    def many?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def maximum(column_name); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def member?(record); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def minimum(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::GeocodeResult).void)
      ).returns(::GeocodeResult)
    end
    def new(attributes = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(record: ::GeocodeResult).returns(T.untyped))).returns(T::Boolean) }
    def none?(&block); end

    sig { params(block: T.nilable(T.proc.params(record: ::GeocodeResult).returns(T.untyped))).returns(T::Boolean) }
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::GeocodeResult)) }
    def second; end

    sig { returns(::GeocodeResult) }
    def second!; end

    sig { returns(T.nilable(::GeocodeResult)) }
    def second_to_last; end

    sig { returns(::GeocodeResult) }
    def second_to_last!; end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T.untyped)
    end
    def sum(column_name = nil, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def take(limit = nil); end

    sig { returns(::GeocodeResult) }
    def take!; end

    sig { returns(T.nilable(::GeocodeResult)) }
    def third; end

    sig { returns(::GeocodeResult) }
    def third!; end

    sig { returns(T.nilable(::GeocodeResult)) }
    def third_to_last; end

    sig { returns(::GeocodeResult) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def build_geocode_query(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def create_geocode_query(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def create_geocode_query!(*args, &blk); end

    sig { returns(T.nilable(::GeocodeQuery)) }
    def geocode_query; end

    sig { params(value: T.nilable(::GeocodeQuery)).void }
    def geocode_query=(value); end

    sig { returns(T.nilable(::GeocodeQuery)) }
    def reload_geocode_query; end
  end

  module GeneratedAssociationRelationMethods
    sig { returns(PrivateAssociationRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def includes(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert!(attributes, returning: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert_all(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert_all!(attributes, returning: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def unscope(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert_all(attributes, returning: nil, unique_by: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationWhereChain) }
    def where(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at; end

    sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
    def created_at=(value); end

    sig { returns(T::Boolean) }
    def created_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_before_last_save; end

    sig { returns(T.untyped) }
    def created_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def created_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def created_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def created_at_previous_change; end

    sig { returns(T::Boolean) }
    def created_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at_was; end

    sig { void }
    def created_at_will_change!; end

    sig { returns(T.nilable(::String)) }
    def full_address; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def full_address=(value); end

    sig { returns(T::Boolean) }
    def full_address?; end

    sig { returns(T.nilable(::String)) }
    def full_address_before_last_save; end

    sig { returns(T.untyped) }
    def full_address_before_type_cast; end

    sig { returns(T::Boolean) }
    def full_address_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def full_address_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_address_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_previous_change; end

    sig { returns(T::Boolean) }
    def full_address_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_address_previously_was; end

    sig { returns(T.nilable(::String)) }
    def full_address_was; end

    sig { void }
    def full_address_will_change!; end

    sig { returns(::Integer) }
    def geocode_query_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def geocode_query_id=(value); end

    sig { returns(T::Boolean) }
    def geocode_query_id?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_before_last_save; end

    sig { returns(T.untyped) }
    def geocode_query_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def geocode_query_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def geocode_query_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_previous_change; end

    sig { returns(T::Boolean) }
    def geocode_query_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_was; end

    sig { void }
    def geocode_query_id_will_change!; end

    sig { returns(::String) }
    def geocoder; end

    sig { params(value: ::String).returns(::String) }
    def geocoder=(value); end

    sig { returns(T::Boolean) }
    def geocoder?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_before_last_save; end

    sig { returns(T.untyped) }
    def geocoder_before_type_cast; end

    sig { returns(T::Boolean) }
    def geocoder_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def geocoder_changed?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_previous_change; end

    sig { returns(T::Boolean) }
    def geocoder_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_previously_was; end

    sig { returns(T.nilable(::String)) }
    def geocoder_was; end

    sig { void }
    def geocoder_will_change!; end

    sig { returns(T.nilable(::Integer)) }
    def id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def id=(value); end

    sig { returns(T::Boolean) }
    def id?; end

    sig { returns(T.nilable(::Integer)) }
    def id_before_last_save; end

    sig { returns(T.untyped) }
    def id_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_change; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def id_in_database; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def id_previous_change; end

    sig { returns(T::Boolean) }
    def id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { returns(T.nilable(::Float)) }
    def lat; end

    sig { params(value: T.nilable(::Float)).returns(T.nilable(::Float)) }
    def lat=(value); end

    sig { returns(T::Boolean) }
    def lat?; end

    sig { returns(T.nilable(::Float)) }
    def lat_before_last_save; end

    sig { returns(T.untyped) }
    def lat_before_type_cast; end

    sig { returns(T::Boolean) }
    def lat_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lat_change; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lat_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def lat_changed?; end

    sig { returns(T.nilable(::Float)) }
    def lat_in_database; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lat_previous_change; end

    sig { returns(T::Boolean) }
    def lat_previously_changed?; end

    sig { returns(T.nilable(::Float)) }
    def lat_previously_was; end

    sig { returns(T.nilable(::Float)) }
    def lat_was; end

    sig { void }
    def lat_will_change!; end

    sig { returns(T.nilable(::Float)) }
    def lng; end

    sig { params(value: T.nilable(::Float)).returns(T.nilable(::Float)) }
    def lng=(value); end

    sig { returns(T::Boolean) }
    def lng?; end

    sig { returns(T.nilable(::Float)) }
    def lng_before_last_save; end

    sig { returns(T.untyped) }
    def lng_before_type_cast; end

    sig { returns(T::Boolean) }
    def lng_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lng_change; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lng_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def lng_changed?; end

    sig { returns(T.nilable(::Float)) }
    def lng_in_database; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def lng_previous_change; end

    sig { returns(T::Boolean) }
    def lng_previously_changed?; end

    sig { returns(T.nilable(::Float)) }
    def lng_previously_was; end

    sig { returns(T.nilable(::Float)) }
    def lng_was; end

    sig { void }
    def lng_will_change!; end

    sig { returns(T.nilable(::String)) }
    def postcode; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def postcode=(value); end

    sig { returns(T::Boolean) }
    def postcode?; end

    sig { returns(T.nilable(::String)) }
    def postcode_before_last_save; end

    sig { returns(T.untyped) }
    def postcode_before_type_cast; end

    sig { returns(T::Boolean) }
    def postcode_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def postcode_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def postcode_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def postcode_changed?; end

    sig { returns(T.nilable(::String)) }
    def postcode_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def postcode_previous_change; end

    sig { returns(T::Boolean) }
    def postcode_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def postcode_previously_was; end

    sig { returns(T.nilable(::String)) }
    def postcode_was; end

    sig { void }
    def postcode_will_change!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_full_address!; end

    sig { void }
    def restore_geocode_query_id!; end

    sig { void }
    def restore_geocoder!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_lat!; end

    sig { void }
    def restore_lng!; end

    sig { void }
    def restore_postcode!; end

    sig { void }
    def restore_state!; end

    sig { void }
    def restore_suburb!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_full_address; end

    sig { returns(T::Boolean) }
    def saved_change_to_full_address?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_geocode_query_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_geocode_query_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_geocoder; end

    sig { returns(T::Boolean) }
    def saved_change_to_geocoder?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lat; end

    sig { returns(T::Boolean) }
    def saved_change_to_lat?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lng; end

    sig { returns(T::Boolean) }
    def saved_change_to_lng?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_postcode; end

    sig { returns(T::Boolean) }
    def saved_change_to_postcode?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_state; end

    sig { returns(T::Boolean) }
    def saved_change_to_state?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_suburb; end

    sig { returns(T::Boolean) }
    def saved_change_to_suburb?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_updated_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_updated_at?; end

    sig { returns(T.nilable(::String)) }
    def state; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def state=(value); end

    sig { returns(T::Boolean) }
    def state?; end

    sig { returns(T.nilable(::String)) }
    def state_before_last_save; end

    sig { returns(T.untyped) }
    def state_before_type_cast; end

    sig { returns(T::Boolean) }
    def state_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def state_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def state_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def state_changed?; end

    sig { returns(T.nilable(::String)) }
    def state_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def state_previous_change; end

    sig { returns(T::Boolean) }
    def state_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def state_previously_was; end

    sig { returns(T.nilable(::String)) }
    def state_was; end

    sig { void }
    def state_will_change!; end

    sig { returns(T.nilable(::String)) }
    def suburb; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def suburb=(value); end

    sig { returns(T::Boolean) }
    def suburb?; end

    sig { returns(T.nilable(::String)) }
    def suburb_before_last_save; end

    sig { returns(T.untyped) }
    def suburb_before_type_cast; end

    sig { returns(T::Boolean) }
    def suburb_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def suburb_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def suburb_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def suburb_changed?; end

    sig { returns(T.nilable(::String)) }
    def suburb_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def suburb_previous_change; end

    sig { returns(T::Boolean) }
    def suburb_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def suburb_previously_was; end

    sig { returns(T.nilable(::String)) }
    def suburb_was; end

    sig { void }
    def suburb_will_change!; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at; end

    sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
    def updated_at=(value); end

    sig { returns(T::Boolean) }
    def updated_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_before_last_save; end

    sig { returns(T.untyped) }
    def updated_at_before_type_cast; end

    sig { returns(T::Boolean) }
    def updated_at_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_change; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def updated_at_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_in_database; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def updated_at_previous_change; end

    sig { returns(T::Boolean) }
    def updated_at_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at_was; end

    sig { void }
    def updated_at_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_full_address?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_geocode_query_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_geocoder?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lat?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lng?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_postcode?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_state?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_suburb?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end

  module GeneratedRelationMethods
    sig { returns(PrivateRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationWhereChain) }
    def where(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::GeocodeResult } }

    sig { returns(T::Array[::GeocodeResult]) }
    def to_ary; end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::GeocodeResult } }

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateAssociationRelation) }
    def not(opts, *rest); end
  end

  class PrivateCollectionProxy < ::ActiveRecord::Associations::CollectionProxy
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::GeocodeResult } }

    sig do
      params(
        records: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig do
      params(
        records: T.any(::GeocodeResult, Integer, String, T::Enumerable[T.any(::GeocodeResult, Integer, String, T::Enumerable[::GeocodeResult])])
      ).returns(T::Array[::GeocodeResult])
    end
    def delete(*records); end

    sig do
      params(
        records: T.any(::GeocodeResult, Integer, String, T::Enumerable[T.any(::GeocodeResult, Integer, String, T::Enumerable[::GeocodeResult])])
      ).returns(T::Array[::GeocodeResult])
    end
    def destroy(*records); end

    sig { returns(T::Array[::GeocodeResult]) }
    def load_target; end

    sig do
      params(
        records: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::GeocodeResult, T::Enumerable[T.any(::GeocodeResult, T::Enumerable[::GeocodeResult])])
      ).returns(T::Array[::GeocodeResult])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::GeocodeResult]) }
    def target; end

    sig { returns(T::Array[::GeocodeResult]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::GeocodeResult } }

    sig { returns(T::Array[::GeocodeResult]) }
    def to_ary; end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::GeocodeResult } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
