# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Application`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class Application
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend GeneratedRelationMethods

  module GeneratedAssociationMethods
    sig { returns(T.nilable(::Authority)) }
    def authority; end

    sig { params(value: T.nilable(::Authority)).void }
    def authority=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Authority) }
    def build_authority(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def build_current_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def build_first_version(*args, &blk); end

    sig { returns(T::Array[T.untyped]) }
    def comment_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def comment_ids=(ids); end

    sig { returns(::ActiveRecord::Associations::CollectionProxy[Comment]) }
    def comments; end

    sig { params(value: T::Enumerable[::Comment]).void }
    def comments=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Authority) }
    def create_authority(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Authority) }
    def create_authority!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_current_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_current_version!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_first_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_first_version!(*args, &blk); end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def current_version; end

    sig { params(value: T.nilable(::ApplicationVersion)).void }
    def current_version=(value); end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def first_version; end

    sig { params(value: T.nilable(::ApplicationVersion)).void }
    def first_version=(value); end

    sig { returns(T.nilable(::Authority)) }
    def reload_authority; end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def reload_current_version; end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def reload_first_version; end

    sig { returns(T::Array[T.untyped]) }
    def version_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def version_ids=(ids); end

    sig { returns(::ActiveRecord::Associations::CollectionProxy[ApplicationVersion]) }
    def versions; end

    sig { params(value: T::Enumerable[::ApplicationVersion]).void }
    def versions=(value); end
  end

  module GeneratedAttributeMethods
    sig { returns(::Integer) }
    def authority_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def authority_id=(value); end

    sig { returns(T::Boolean) }
    def authority_id?; end

    sig { returns(T.nilable(::Integer)) }
    def authority_id_before_last_save; end

    sig { returns(T.untyped) }
    def authority_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def authority_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def authority_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def authority_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def authority_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def authority_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def authority_id_previous_change; end

    sig { returns(T::Boolean) }
    def authority_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def authority_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def authority_id_was; end

    sig { void }
    def authority_id_will_change!; end

    sig { returns(::String) }
    def council_reference; end

    sig { params(value: ::String).returns(::String) }
    def council_reference=(value); end

    sig { returns(T::Boolean) }
    def council_reference?; end

    sig { returns(T.nilable(::String)) }
    def council_reference_before_last_save; end

    sig { returns(T.untyped) }
    def council_reference_before_type_cast; end

    sig { returns(T::Boolean) }
    def council_reference_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def council_reference_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def council_reference_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def council_reference_changed?; end

    sig { returns(T.nilable(::String)) }
    def council_reference_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def council_reference_previous_change; end

    sig { returns(T::Boolean) }
    def council_reference_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def council_reference_previously_was; end

    sig { returns(T.nilable(::String)) }
    def council_reference_was; end

    sig { void }
    def council_reference_will_change!; end

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

    sig { returns(T.nilable(::Integer)) }
    def no_alerted; end

    sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
    def no_alerted=(value); end

    sig { returns(T::Boolean) }
    def no_alerted?; end

    sig { returns(T.nilable(::Integer)) }
    def no_alerted_before_last_save; end

    sig { returns(T.untyped) }
    def no_alerted_before_type_cast; end

    sig { returns(T::Boolean) }
    def no_alerted_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def no_alerted_change; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def no_alerted_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def no_alerted_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_alerted_in_database; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def no_alerted_previous_change; end

    sig { returns(T::Boolean) }
    def no_alerted_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_alerted_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def no_alerted_was; end

    sig { void }
    def no_alerted_will_change!; end

    sig { void }
    def restore_authority_id!; end

    sig { void }
    def restore_council_reference!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_no_alerted!; end

    sig { void }
    def restore_visible_comments_count!; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_authority_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_authority_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_council_reference; end

    sig { returns(T::Boolean) }
    def saved_change_to_council_reference?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_no_alerted; end

    sig { returns(T::Boolean) }
    def saved_change_to_no_alerted?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_visible_comments_count; end

    sig { returns(T::Boolean) }
    def saved_change_to_visible_comments_count?; end

    sig { returns(::Integer) }
    def visible_comments_count; end

    sig { params(value: ::Integer).returns(::Integer) }
    def visible_comments_count=(value); end

    sig { returns(T::Boolean) }
    def visible_comments_count?; end

    sig { returns(T.nilable(::Integer)) }
    def visible_comments_count_before_last_save; end

    sig { returns(T.untyped) }
    def visible_comments_count_before_type_cast; end

    sig { returns(T::Boolean) }
    def visible_comments_count_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def visible_comments_count_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def visible_comments_count_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def visible_comments_count_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def visible_comments_count_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def visible_comments_count_previous_change; end

    sig { returns(T::Boolean) }
    def visible_comments_count_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def visible_comments_count_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def visible_comments_count_was; end

    sig { void }
    def visible_comments_count_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_authority_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_council_reference?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_no_alerted?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_visible_comments_count?; end
  end

  module GeneratedRelationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def geocoded(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def in_past_week(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def near(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def not_geocoded(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def not_reverse_geocoded(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def recent(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def with_current_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def with_first_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def within_bounding_box(*args, &blk); end
  end
end