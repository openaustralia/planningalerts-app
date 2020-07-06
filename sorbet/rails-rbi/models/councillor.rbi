# This is an autogenerated file for dynamic methods in Councillor
# Please rerun bundle exec rake rails_rbi:models[Councillor] to regenerate.

# typed: strong
module Councillor::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Councillor::GeneratedAttributeMethods
  sig { returns(Integer) }
  def authority_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def authority_id=(value); end

  sig { returns(T::Boolean) }
  def authority_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T::Boolean) }
  def current; end

  sig { params(value: T::Boolean).void }
  def current=(value); end

  sig { returns(T::Boolean) }
  def current?; end

  sig { returns(String) }
  def email; end

  sig { params(value: T.any(String, Symbol)).void }
  def email=(value); end

  sig { returns(T::Boolean) }
  def email?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(String)) }
  def image_url; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def image_url=(value); end

  sig { returns(T::Boolean) }
  def image_url?; end

  sig { returns(String) }
  def name; end

  sig { params(value: T.any(String, Symbol)).void }
  def name=(value); end

  sig { returns(T::Boolean) }
  def name?; end

  sig { returns(T.nilable(String)) }
  def party; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def party=(value); end

  sig { returns(T::Boolean) }
  def party?; end

  sig { returns(String) }
  def popolo_id; end

  sig { params(value: T.any(String, Symbol)).void }
  def popolo_id=(value); end

  sig { returns(T::Boolean) }
  def popolo_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Councillor::GeneratedAssociationMethods
  sig { returns(::Authority) }
  def authority; end

  sig { params(value: ::Authority).void }
  def authority=(value); end

  sig { returns(::Comment::ActiveRecord_Associations_CollectionProxy) }
  def comments; end

  sig { returns(T::Array[Integer]) }
  def comment_ids; end

  sig { params(value: T::Enumerable[::Comment]).void }
  def comments=(value); end

  sig { returns(::Reply::ActiveRecord_Associations_CollectionProxy) }
  def replies; end

  sig { returns(T::Array[Integer]) }
  def reply_ids; end

  sig { params(value: T::Enumerable[::Reply]).void }
  def replies=(value); end
end

module Councillor::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Councillor]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Councillor]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Councillor]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Councillor)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Councillor) }
  def find_by_id!(id); end
end

class Councillor < ApplicationRecord
  include Councillor::GeneratedAttributeMethods
  include Councillor::GeneratedAssociationMethods
  extend Councillor::CustomFinderMethods
  extend Councillor::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Councillor::ActiveRecord_Relation, Councillor::ActiveRecord_Associations_CollectionProxy, Councillor::ActiveRecord_AssociationRelation) }
end

module Councillor::QueryMethodsReturningRelation
  sig { returns(Councillor::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Councillor::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Councillor::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Councillor::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Councillor::QueryMethodsReturningAssociationRelation
  sig { returns(Councillor::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Councillor::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Councillor::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Councillor::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Councillor::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Councillor::ActiveRecord_Relation < ActiveRecord::Relation
  include Councillor::ActiveRelation_WhereNot
  include Councillor::CustomFinderMethods
  include Councillor::QueryMethodsReturningRelation
  Elem = type_member(fixed: Councillor)
end

class Councillor::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Councillor::ActiveRelation_WhereNot
  include Councillor::CustomFinderMethods
  include Councillor::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Councillor)
end

class Councillor::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Councillor::CustomFinderMethods
  include Councillor::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Councillor)

  sig { params(records: T.any(Councillor, T::Array[Councillor])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Councillor, T::Array[Councillor])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Councillor, T::Array[Councillor])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Councillor, T::Array[Councillor])).returns(T.self_type) }
  def concat(*records); end
end
