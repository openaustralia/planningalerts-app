# This is an autogenerated file for dynamic methods in Report
# Please rerun bundle exec rake rails_rbi:models[Report] to regenerate.

# typed: strong
module Report::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Report::GeneratedAttributeMethods
  sig { returns(Integer) }
  def comment_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def comment_id=(value); end

  sig { returns(T::Boolean) }
  def comment_id?; end

  sig { returns(T.nilable(ActiveSupport::TimeWithZone)) }
  def created_at; end

  sig { params(value: T.nilable(T.any(Date, Time, ActiveSupport::TimeWithZone))).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(String) }
  def details; end

  sig { params(value: T.any(String, Symbol)).void }
  def details=(value); end

  sig { returns(T::Boolean) }
  def details?; end

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

  sig { returns(String) }
  def name; end

  sig { params(value: T.any(String, Symbol)).void }
  def name=(value); end

  sig { returns(T::Boolean) }
  def name?; end

  sig { returns(T.nilable(ActiveSupport::TimeWithZone)) }
  def updated_at; end

  sig { params(value: T.nilable(T.any(Date, Time, ActiveSupport::TimeWithZone))).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Report::GeneratedAssociationMethods
  sig { returns(::Comment) }
  def comment; end

  sig { params(value: ::Comment).void }
  def comment=(value); end
end

module Report::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Report]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Report]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Report]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Report)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Report) }
  def find_by_id!(id); end
end

class Report < ApplicationRecord
  include Report::GeneratedAttributeMethods
  include Report::GeneratedAssociationMethods
  extend Report::CustomFinderMethods
  extend Report::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Report::ActiveRecord_Relation, Report::ActiveRecord_Associations_CollectionProxy, Report::ActiveRecord_AssociationRelation) }
end

module Report::QueryMethodsReturningRelation
  sig { returns(Report::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Report::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Report::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Report::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Report::QueryMethodsReturningAssociationRelation
  sig { returns(Report::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Report::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Report::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Report::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Report::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Report::ActiveRecord_Relation < ActiveRecord::Relation
  include Report::ActiveRelation_WhereNot
  include Report::CustomFinderMethods
  include Report::QueryMethodsReturningRelation
  Elem = type_member(fixed: Report)
end

class Report::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Report::ActiveRelation_WhereNot
  include Report::CustomFinderMethods
  include Report::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Report)
end

class Report::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Report::CustomFinderMethods
  include Report::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Report)

  sig { params(records: T.any(Report, T::Array[Report])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Report, T::Array[Report])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Report, T::Array[Report])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Report, T::Array[Report])).returns(T.self_type) }
  def concat(*records); end
end