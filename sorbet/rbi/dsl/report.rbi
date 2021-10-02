# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Report`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class Report
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods

  module GeneratedAssociationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(::Comment) }
    def build_comment(*args, &blk); end

    sig { returns(T.nilable(::Comment)) }
    def comment; end

    sig { params(value: T.nilable(::Comment)).void }
    def comment=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Comment) }
    def create_comment(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Comment) }
    def create_comment!(*args, &blk); end

    sig { returns(T.nilable(::Comment)) }
    def reload_comment; end
  end

  module GeneratedAttributeMethods
    sig { returns(::Integer) }
    def comment_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def comment_id=(value); end

    sig { returns(T::Boolean) }
    def comment_id?; end

    sig { returns(T.nilable(::Integer)) }
    def comment_id_before_last_save; end

    sig { returns(T.untyped) }
    def comment_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def comment_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def comment_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def comment_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def comment_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def comment_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def comment_id_previous_change; end

    sig { returns(T::Boolean) }
    def comment_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def comment_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def comment_id_was; end

    sig { void }
    def comment_id_will_change!; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def created_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
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
    def details; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def details=(value); end

    sig { returns(T::Boolean) }
    def details?; end

    sig { returns(T.nilable(::String)) }
    def details_before_last_save; end

    sig { returns(T.untyped) }
    def details_before_type_cast; end

    sig { returns(T::Boolean) }
    def details_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def details_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def details_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def details_changed?; end

    sig { returns(T.nilable(::String)) }
    def details_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def details_previous_change; end

    sig { returns(T::Boolean) }
    def details_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def details_previously_was; end

    sig { returns(T.nilable(::String)) }
    def details_was; end

    sig { void }
    def details_will_change!; end

    sig { returns(T.nilable(::String)) }
    def email; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def email=(value); end

    sig { returns(T::Boolean) }
    def email?; end

    sig { returns(T.nilable(::String)) }
    def email_before_last_save; end

    sig { returns(T.untyped) }
    def email_before_type_cast; end

    sig { returns(T::Boolean) }
    def email_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def email_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_previous_change; end

    sig { returns(T::Boolean) }
    def email_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_previously_was; end

    sig { returns(T.nilable(::String)) }
    def email_was; end

    sig { void }
    def email_will_change!; end

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

    sig { returns(T.nilable(::String)) }
    def name; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def name=(value); end

    sig { returns(T::Boolean) }
    def name?; end

    sig { returns(T.nilable(::String)) }
    def name_before_last_save; end

    sig { returns(T.untyped) }
    def name_before_type_cast; end

    sig { returns(T::Boolean) }
    def name_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def name_changed?; end

    sig { returns(T.nilable(::String)) }
    def name_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def name_previous_change; end

    sig { returns(T::Boolean) }
    def name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def name_was; end

    sig { void }
    def name_will_change!; end

    sig { void }
    def restore_comment_id!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_details!; end

    sig { void }
    def restore_email!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_name!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_comment_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_comment_id?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_details; end

    sig { returns(T::Boolean) }
    def saved_change_to_details?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_email; end

    sig { returns(T::Boolean) }
    def saved_change_to_email?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_name?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_updated_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_updated_at?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def updated_at; end

    sig { params(value: T.nilable(::ActiveSupport::TimeWithZone)).returns(T.nilable(::ActiveSupport::TimeWithZone)) }
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
    def will_save_change_to_comment_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_details?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_email?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end
end