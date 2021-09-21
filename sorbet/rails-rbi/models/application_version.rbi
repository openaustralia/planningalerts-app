# This is an autogenerated file for dynamic methods in ApplicationVersion
# Please rerun bundle exec rake rails_rbi:models[ApplicationVersion] to regenerate.

# typed: strong
module ApplicationVersion::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ApplicationVersion::GeneratedAttributeMethods
  sig { returns(String) }
  def address; end

  sig { params(value: T.any(String, Symbol)).void }
  def address=(value); end

  sig { returns(T::Boolean) }
  def address?; end

  sig { returns(Integer) }
  def application_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def application_id=(value); end

  sig { returns(T::Boolean) }
  def application_id?; end

  sig { returns(T.nilable(String)) }
  def comment_url; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def comment_url=(value); end

  sig { returns(T::Boolean) }
  def comment_url?; end

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

  sig { returns(T.nilable(Date)) }
  def date_received; end

  sig { params(value: T.nilable(Date)).void }
  def date_received=(value); end

  sig { returns(T::Boolean) }
  def date_received?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def date_scraped; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def date_scraped=(value); end

  sig { returns(T::Boolean) }
  def date_scraped?; end

  sig { returns(String) }
  def description; end

  sig { params(value: T.any(String, Symbol)).void }
  def description=(value); end

  sig { returns(T::Boolean) }
  def description?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def info_url; end

  sig { params(value: T.any(String, Symbol)).void }
  def info_url=(value); end

  sig { returns(T::Boolean) }
  def info_url?; end

  sig { returns(T.nilable(Float)) }
  def lat; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def lat=(value); end

  sig { returns(T::Boolean) }
  def lat?; end

  sig { returns(T.nilable(Float)) }
  def lng; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def lng=(value); end

  sig { returns(T::Boolean) }
  def lng?; end

  sig { returns(T.nilable(Date)) }
  def on_notice_from; end

  sig { params(value: T.nilable(Date)).void }
  def on_notice_from=(value); end

  sig { returns(T::Boolean) }
  def on_notice_from?; end

  sig { returns(T.nilable(Date)) }
  def on_notice_to; end

  sig { params(value: T.nilable(Date)).void }
  def on_notice_to=(value); end

  sig { returns(T::Boolean) }
  def on_notice_to?; end

  sig { returns(T.nilable(String)) }
  def postcode; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def postcode=(value); end

  sig { returns(T::Boolean) }
  def postcode?; end

  sig { returns(T.nilable(Integer)) }
  def previous_version_id; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def previous_version_id=(value); end

  sig { returns(T::Boolean) }
  def previous_version_id?; end

  sig { returns(T.nilable(String)) }
  def state; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def state=(value); end

  sig { returns(T::Boolean) }
  def state?; end

  sig { returns(T.nilable(String)) }
  def suburb; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def suburb=(value); end

  sig { returns(T::Boolean) }
  def suburb?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module ApplicationVersion::GeneratedAssociationMethods
  sig { returns(::Application) }
  def application; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Application).void)).returns(::Application) }
  def build_application(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Application).void)).returns(::Application) }
  def create_application(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Application).void)).returns(::Application) }
  def create_application!(*args, &block); end

  sig { params(value: ::Application).void }
  def application=(value); end

  sig { returns(::Application) }
  def reload_application; end

  sig { returns(T.nilable(::ApplicationVersion)) }
  def previous_version; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ApplicationVersion).void)).returns(::ApplicationVersion) }
  def build_previous_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ApplicationVersion).void)).returns(::ApplicationVersion) }
  def create_previous_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ApplicationVersion).void)).returns(::ApplicationVersion) }
  def create_previous_version!(*args, &block); end

  sig { params(value: T.nilable(::ApplicationVersion)).void }
  def previous_version=(value); end

  sig { returns(T.nilable(::ApplicationVersion)) }
  def reload_previous_version; end
end

module ApplicationVersion::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ApplicationVersion]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ApplicationVersion]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ApplicationVersion]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ApplicationVersion)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ApplicationVersion) }
  def find_by_id!(id); end
end

class ApplicationVersion < ApplicationRecord
  include ApplicationVersion::GeneratedAttributeMethods
  include ApplicationVersion::GeneratedAssociationMethods
  extend ApplicationVersion::CustomFinderMethods
  extend ApplicationVersion::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ApplicationVersion::ActiveRecord_Relation, ApplicationVersion::ActiveRecord_Associations_CollectionProxy, ApplicationVersion::ActiveRecord_AssociationRelation) }
end

module ApplicationVersion::QueryMethodsReturningRelation
  sig { returns(ApplicationVersion::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ApplicationVersion::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ApplicationVersion::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ApplicationVersion::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ApplicationVersion::QueryMethodsReturningAssociationRelation
  sig { returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ApplicationVersion::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ApplicationVersion::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ApplicationVersion::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class ApplicationVersion::ActiveRecord_Relation < ActiveRecord::Relation
  include ApplicationVersion::ActiveRelation_WhereNot
  include ApplicationVersion::CustomFinderMethods
  include ApplicationVersion::QueryMethodsReturningRelation
  Elem = type_member(fixed: ApplicationVersion)
end

class ApplicationVersion::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ApplicationVersion::ActiveRelation_WhereNot
  include ApplicationVersion::CustomFinderMethods
  include ApplicationVersion::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ApplicationVersion)
end

class ApplicationVersion::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ApplicationVersion::CustomFinderMethods
  include ApplicationVersion::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ApplicationVersion)

  sig { params(records: T.any(ApplicationVersion, T::Array[ApplicationVersion])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ApplicationVersion, T::Array[ApplicationVersion])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ApplicationVersion, T::Array[ApplicationVersion])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ApplicationVersion, T::Array[ApplicationVersion])).returns(T.self_type) }
  def concat(*records); end
end
