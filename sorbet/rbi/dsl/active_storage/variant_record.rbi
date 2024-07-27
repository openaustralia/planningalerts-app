# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::VariantRecord`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::VariantRecord`.


class ActiveStorage::VariantRecord
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  sig { returns(ActiveStorage::Attached::One) }
  def image; end

  sig { params(attachable: T.untyped).returns(T.untyped) }
  def image=(attachable); end

  private

  sig { returns(NilClass) }
  def to_ary; end

  module CommonRelationMethods
    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::VariantRecord).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
    def average(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.any(Integer, Float, BigDecimal)) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.nilable(T.any(String, Symbol))).returns(Integer) }
    sig do
      params(
        column_name: NilClass,
        block: T.proc.params(object: ::ActiveStorage::VariantRecord).void
      ).returns(Integer)
    end
    def count(column_name = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def create(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def fifth; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def fifth!; end

    sig do
      params(
        args: T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])
      ).returns(::ActiveStorage::VariantRecord)
    end
    sig do
      params(
        args: T::Array[T.any(String, Symbol, ::ActiveSupport::Multibyte::Chars, T::Boolean, BigDecimal, Numeric, ::ActiveRecord::Type::Binary::Data, ::ActiveRecord::Type::Time::Value, Date, Time, ::ActiveSupport::Duration, T::Class[T.anything])]
      ).returns(T::Enumerable[::ActiveStorage::VariantRecord])
    end
    sig do
      params(
        args: NilClass,
        block: T.proc.params(object: ::ActiveStorage::VariantRecord).void
      ).returns(T.nilable(::ActiveStorage::VariantRecord))
    end
    def find(args = nil, &block); end

    sig { params(args: T.untyped).returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::ActiveStorage::VariantRecord) }
    def find_by!(*args); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.proc.params(object: ::ActiveStorage::VariantRecord).void
      ).void
    end
    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol
      ).returns(T::Enumerator[::ActiveStorage::VariantRecord])
    end
    def find_each(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.proc.params(object: T::Array[::ActiveStorage::VariantRecord]).void
      ).void
    end
    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol
      ).returns(T::Enumerator[T::Enumerator[::ActiveStorage::VariantRecord]])
    end
    def find_in_batches(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def find_or_initialize_by(attributes, &block); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def find_signed(signed_id, purpose: nil); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(::ActiveStorage::VariantRecord) }
    def find_signed!(signed_id, purpose: nil); end

    sig { params(arg: T.untyped, args: T.untyped).returns(::ActiveStorage::VariantRecord) }
    def find_sole_by(arg, *args); end

    sig { params(limit: NilClass).returns(T.nilable(::ActiveStorage::VariantRecord)) }
    sig { params(limit: Integer).returns(T::Array[::ActiveStorage::VariantRecord]) }
    def first(limit = nil); end

    sig { returns(::ActiveStorage::VariantRecord) }
    def first!; end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def forty_two; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def forty_two!; end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def fourth; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig do
      params(
        of: Integer,
        start: T.untyped,
        finish: T.untyped,
        load: T.untyped,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.proc.params(object: PrivateRelation).void
      ).void
    end
    sig do
      params(
        of: Integer,
        start: T.untyped,
        finish: T.untyped,
        load: T.untyped,
        error_on_ignore: T.untyped,
        order: Symbol
      ).returns(::ActiveRecord::Batches::BatchEnumerator)
    end
    def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, order: :asc, &block); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { params(limit: NilClass).returns(T.nilable(::ActiveStorage::VariantRecord)) }
    sig { params(limit: Integer).returns(T::Array[::ActiveStorage::VariantRecord]) }
    def last(limit = nil); end

    sig { returns(::ActiveStorage::VariantRecord) }
    def last!; end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::VariantRecord).returns(T.untyped))
      ).returns(T::Boolean)
    end
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
        block: T.nilable(T.proc.params(object: ::ActiveStorage::VariantRecord).void)
      ).returns(::ActiveStorage::VariantRecord)
    end
    def new(attributes = nil, &block); end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::VariantRecord).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def none?(&block); end

    sig do
      params(
        block: T.nilable(T.proc.params(record: ::ActiveStorage::VariantRecord).returns(T.untyped))
      ).returns(T::Boolean)
    end
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def second; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def second!; end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def second_to_last; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def second_to_last!; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def sole; end

    sig { params(initial_value_or_column: T.untyped).returns(T.any(Integer, Float, BigDecimal)) }
    sig do
      type_parameters(:U)
        .params(
          initial_value_or_column: T.nilable(T.type_parameter(:U)),
          block: T.proc.params(object: ::ActiveStorage::VariantRecord).returns(T.type_parameter(:U))
        ).returns(T.type_parameter(:U))
    end
    def sum(initial_value_or_column = nil, &block); end

    sig { params(limit: NilClass).returns(T.nilable(::ActiveStorage::VariantRecord)) }
    sig { params(limit: Integer).returns(T::Array[::ActiveStorage::VariantRecord]) }
    def take(limit = nil); end

    sig { returns(::ActiveStorage::VariantRecord) }
    def take!; end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def third; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def third!; end

    sig { returns(T.nilable(::ActiveStorage::VariantRecord)) }
    def third_to_last; end

    sig { returns(::ActiveStorage::VariantRecord) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def blob; end

    sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
    def blob=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def build_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def build_image_attachment(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def build_image_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_blob!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def create_image_attachment(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Attachment) }
    def create_image_attachment!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_image_blob(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ActiveStorage::Blob) }
    def create_image_blob!(*args, &blk); end

    sig { returns(T.nilable(::ActiveStorage::Attachment)) }
    def image_attachment; end

    sig { params(value: T.nilable(::ActiveStorage::Attachment)).void }
    def image_attachment=(value); end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def image_blob; end

    sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
    def image_blob=(value); end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def reload_blob; end

    sig { returns(T.nilable(::ActiveStorage::Attachment)) }
    def reload_image_attachment; end

    sig { returns(T.nilable(::ActiveStorage::Blob)) }
    def reload_image_blob; end

    sig { void }
    def reset_blob; end

    sig { void }
    def reset_image_attachment; end

    sig { void }
    def reset_image_blob; end
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

    sig { params(value: T::Boolean).returns(PrivateAssociationRelation) }
    def distinct(value = true); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extending(*args, &blk); end

    sig { params(association: Symbol).returns(T::Array[T.untyped]) }
    def extract_associated(association); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationGroupChain) }
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
    def with_attached_image(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def without(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(::Integer) }
    def blob_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def blob_id=(value); end

    sig { returns(T::Boolean) }
    def blob_id?; end

    sig { returns(T.nilable(::Integer)) }
    def blob_id_before_last_save; end

    sig { returns(T.untyped) }
    def blob_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def blob_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def blob_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def blob_id_change_to_be_saved; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def blob_id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def blob_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def blob_id_previous_change; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def blob_id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def blob_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def blob_id_was; end

    sig { void }
    def blob_id_will_change!; end

    sig { returns(::Integer) }
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

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_change_to_be_saved; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def id_previous_change; end

    sig { params(from: ::Integer, to: ::Integer).returns(T::Boolean) }
    def id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::Integer)) }
    def id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { void }
    def restore_blob_id!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_variation_digest!; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_blob_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_blob_id?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_variation_digest; end

    sig { returns(T::Boolean) }
    def saved_change_to_variation_digest?; end

    sig { returns(::String) }
    def variation_digest; end

    sig { params(value: ::String).returns(::String) }
    def variation_digest=(value); end

    sig { returns(T::Boolean) }
    def variation_digest?; end

    sig { returns(T.nilable(::String)) }
    def variation_digest_before_last_save; end

    sig { returns(T.untyped) }
    def variation_digest_before_type_cast; end

    sig { returns(T::Boolean) }
    def variation_digest_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def variation_digest_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def variation_digest_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def variation_digest_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def variation_digest_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def variation_digest_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def variation_digest_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def variation_digest_previously_was; end

    sig { returns(T.nilable(::String)) }
    def variation_digest_was; end

    sig { void }
    def variation_digest_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_blob_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_variation_digest?; end
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

    sig { params(value: T::Boolean).returns(PrivateRelation) }
    def distinct(value = true); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extending(*args, &blk); end

    sig { params(association: Symbol).returns(T::Array[T.untyped]) }
    def extract_associated(association); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationGroupChain) }
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
    def with_attached_image(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def without(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_ary; end
  end

  class PrivateAssociationRelationGroupChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
    def average(column_name); end

    sig do
      params(
        operation: Symbol,
        column_name: T.any(String, Symbol)
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
    def count(column_name = nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
    def having(*args, &blk); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def maximum(column_name); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def minimum(column_name); end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def sum(column_name = nil, &block); end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

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

    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, Integer, String, T::Enumerable[T.any(::ActiveStorage::VariantRecord, Integer, String, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(T::Array[::ActiveStorage::VariantRecord])
    end
    def delete(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, Integer, String, T::Enumerable[T.any(::ActiveStorage::VariantRecord, Integer, String, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(T::Array[::ActiveStorage::VariantRecord])
    end
    def destroy(*records); end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def load_target; end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::ActiveStorage::VariantRecord, T::Enumerable[T.any(::ActiveStorage::VariantRecord, T::Enumerable[::ActiveStorage::VariantRecord])])
      ).returns(T::Array[::ActiveStorage::VariantRecord])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def target; end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_a; end

    sig { returns(T::Array[::ActiveStorage::VariantRecord]) }
    def to_ary; end
  end

  class PrivateRelationGroupChain < PrivateRelation
    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)]) }
    def average(column_name); end

    sig do
      params(
        operation: Symbol,
        column_name: T.any(String, Symbol)
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T::Hash[T.untyped, Integer]) }
    def count(column_name = nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.self_type) }
    def having(*args, &blk); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def maximum(column_name); end

    sig { params(column_name: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def minimum(column_name); end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T::Hash[T.untyped, T.any(Integer, Float, BigDecimal)])
    end
    def sum(column_name = nil, &block); end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::ActiveStorage::VariantRecord } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
