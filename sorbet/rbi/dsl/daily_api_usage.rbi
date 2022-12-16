# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `DailyApiUsage`.
# Please instead update this file by running `bin/tapioca dsl DailyApiUsage`.

class DailyApiUsage
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  private

  sig { returns(NilClass) }
  def to_ary; end

  module CommonRelationMethods
    sig { params(block: T.nilable(T.proc.params(record: ::DailyApiUsage).returns(T.untyped))).returns(T::Boolean) }
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def average(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.untyped) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T.untyped) }
    def count(column_name = nil); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def create(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::DailyApiUsage]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def fifth; end

    sig { returns(::DailyApiUsage) }
    def fifth!; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def find(*args); end

    sig { params(args: T.untyped).returns(T.nilable(::DailyApiUsage)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::DailyApiUsage) }
    def find_by!(*args); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def find_or_initialize_by(attributes, &block); end

    sig { params(arg: T.untyped, args: T.untyped).returns(::DailyApiUsage) }
    def find_sole_by(arg, *args); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def first(limit = nil); end

    sig { returns(::DailyApiUsage) }
    def first!; end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def forty_two; end

    sig { returns(::DailyApiUsage) }
    def forty_two!; end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def fourth; end

    sig { returns(::DailyApiUsage) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def last(limit = nil); end

    sig { returns(::DailyApiUsage) }
    def last!; end

    sig { params(block: T.nilable(T.proc.params(record: ::DailyApiUsage).returns(T.untyped))).returns(T::Boolean) }
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
        block: T.nilable(T.proc.params(object: ::DailyApiUsage).void)
      ).returns(::DailyApiUsage)
    end
    def new(attributes = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(record: ::DailyApiUsage).returns(T.untyped))).returns(T::Boolean) }
    def none?(&block); end

    sig { params(block: T.nilable(T.proc.params(record: ::DailyApiUsage).returns(T.untyped))).returns(T::Boolean) }
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def second; end

    sig { returns(::DailyApiUsage) }
    def second!; end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def second_to_last; end

    sig { returns(::DailyApiUsage) }
    def second_to_last!; end

    sig { returns(::DailyApiUsage) }
    def sole; end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T.untyped)
    end
    def sum(column_name = nil, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def take(limit = nil); end

    sig { returns(::DailyApiUsage) }
    def take!; end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def third; end

    sig { returns(::DailyApiUsage) }
    def third!; end

    sig { returns(T.nilable(::DailyApiUsage)) }
    def third_to_last; end

    sig { returns(::DailyApiUsage) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    sig { returns(T.nilable(::ApiKey)) }
    def api_key; end

    sig { params(value: T.nilable(::ApiKey)).void }
    def api_key=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApiKey) }
    def build_api_key(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApiKey) }
    def create_api_key(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApiKey) }
    def create_api_key!(*args, &blk); end

    sig { returns(T.nilable(::ApiKey)) }
    def reload_api_key; end
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
    def excluding(*args, &blk); end

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
    def in_order_of(*args, &blk); end

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
    def invert_where(*args, &blk); end

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
    def structurally_compatible?(*args, &blk); end

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

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def without(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(::Integer) }
    def api_key_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def api_key_id=(value); end

    sig { returns(T::Boolean) }
    def api_key_id?; end

    sig { returns(T.nilable(::Integer)) }
    def api_key_id_before_last_save; end

    sig { returns(T.untyped) }
    def api_key_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def api_key_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def api_key_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def api_key_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def api_key_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def api_key_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def api_key_id_previous_change; end

    sig { returns(T::Boolean) }
    def api_key_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def api_key_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def api_key_id_was; end

    sig { void }
    def api_key_id_will_change!; end

    sig { returns(::Integer) }
    def count; end

    sig { params(value: ::Integer).returns(::Integer) }
    def count=(value); end

    sig { returns(T::Boolean) }
    def count?; end

    sig { returns(T.nilable(::Integer)) }
    def count_before_last_save; end

    sig { returns(T.untyped) }
    def count_before_type_cast; end

    sig { returns(T::Boolean) }
    def count_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def count_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def count_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def count_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def count_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def count_previous_change; end

    sig { returns(T::Boolean) }
    def count_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def count_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def count_was; end

    sig { void }
    def count_will_change!; end

    sig { returns(::Date) }
    def date; end

    sig { params(value: ::Date).returns(::Date) }
    def date=(value); end

    sig { returns(T::Boolean) }
    def date?; end

    sig { returns(T.nilable(::Date)) }
    def date_before_last_save; end

    sig { returns(T.untyped) }
    def date_before_type_cast; end

    sig { returns(T::Boolean) }
    def date_came_from_user?; end

    sig { returns(T.nilable([::Date, ::Date])) }
    def date_change; end

    sig { returns(T.nilable([::Date, ::Date])) }
    def date_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def date_changed?; end

    sig { returns(T.nilable(::Date)) }
    def date_in_database; end

    sig { returns(T.nilable([::Date, ::Date])) }
    def date_previous_change; end

    sig { returns(T::Boolean) }
    def date_previously_changed?; end

    sig { returns(T.nilable(::Date)) }
    def date_previously_was; end

    sig { returns(T.nilable(::Date)) }
    def date_was; end

    sig { void }
    def date_will_change!; end

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

    sig { void }
    def restore_api_key_id!; end

    sig { void }
    def restore_count!; end

    sig { void }
    def restore_date!; end

    sig { void }
    def restore_id!; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_api_key_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_api_key_id?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_count; end

    sig { returns(T::Boolean) }
    def saved_change_to_count?; end

    sig { returns(T.nilable([::Date, ::Date])) }
    def saved_change_to_date; end

    sig { returns(T::Boolean) }
    def saved_change_to_date?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_api_key_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_count?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_date?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end
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
    def excluding(*args, &blk); end

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
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def invert_where(*args, &blk); end

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
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def without(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::DailyApiUsage } }

    sig { returns(T::Array[::DailyApiUsage]) }
    def to_ary; end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::DailyApiUsage } }

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateAssociationRelation) }
    def not(opts, *rest); end
  end

  class PrivateCollectionProxy < ::ActiveRecord::Associations::CollectionProxy
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::DailyApiUsage } }

    sig do
      params(
        records: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig do
      params(
        records: T.any(::DailyApiUsage, Integer, String, T::Enumerable[T.any(::DailyApiUsage, Integer, String, T::Enumerable[::DailyApiUsage])])
      ).returns(T::Array[::DailyApiUsage])
    end
    def delete(*records); end

    sig do
      params(
        records: T.any(::DailyApiUsage, Integer, String, T::Enumerable[T.any(::DailyApiUsage, Integer, String, T::Enumerable[::DailyApiUsage])])
      ).returns(T::Array[::DailyApiUsage])
    end
    def destroy(*records); end

    sig { returns(T::Array[::DailyApiUsage]) }
    def load_target; end

    sig do
      params(
        records: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::DailyApiUsage, T::Enumerable[T.any(::DailyApiUsage, T::Enumerable[::DailyApiUsage])])
      ).returns(T::Array[::DailyApiUsage])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::DailyApiUsage]) }
    def target; end

    sig { returns(T::Array[::DailyApiUsage]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::DailyApiUsage } }

    sig { returns(T::Array[::DailyApiUsage]) }
    def to_ary; end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::DailyApiUsage } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
