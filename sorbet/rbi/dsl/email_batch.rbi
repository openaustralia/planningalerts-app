# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `EmailBatch`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class EmailBatch
  include GeneratedAttributeMethods
  extend GeneratedRelationMethods

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

    sig { returns(::Integer) }
    def no_applications; end

    sig { params(value: ::Integer).returns(::Integer) }
    def no_applications=(value); end

    sig { returns(T::Boolean) }
    def no_applications?; end

    sig { returns(T.nilable(::Integer)) }
    def no_applications_before_last_save; end

    sig { returns(T.untyped) }
    def no_applications_before_type_cast; end

    sig { returns(T::Boolean) }
    def no_applications_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_applications_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_applications_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def no_applications_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_applications_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_applications_previous_change; end

    sig { returns(T::Boolean) }
    def no_applications_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_applications_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def no_applications_was; end

    sig { void }
    def no_applications_will_change!; end

    sig { returns(::Integer) }
    def no_comments; end

    sig { params(value: ::Integer).returns(::Integer) }
    def no_comments=(value); end

    sig { returns(T::Boolean) }
    def no_comments?; end

    sig { returns(T.nilable(::Integer)) }
    def no_comments_before_last_save; end

    sig { returns(T.untyped) }
    def no_comments_before_type_cast; end

    sig { returns(T::Boolean) }
    def no_comments_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_comments_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_comments_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def no_comments_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_comments_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_comments_previous_change; end

    sig { returns(T::Boolean) }
    def no_comments_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_comments_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def no_comments_was; end

    sig { void }
    def no_comments_will_change!; end

    sig { returns(::Integer) }
    def no_emails; end

    sig { params(value: ::Integer).returns(::Integer) }
    def no_emails=(value); end

    sig { returns(T::Boolean) }
    def no_emails?; end

    sig { returns(T.nilable(::Integer)) }
    def no_emails_before_last_save; end

    sig { returns(T.untyped) }
    def no_emails_before_type_cast; end

    sig { returns(T::Boolean) }
    def no_emails_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_emails_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_emails_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def no_emails_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_emails_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def no_emails_previous_change; end

    sig { returns(T::Boolean) }
    def no_emails_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def no_emails_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def no_emails_was; end

    sig { void }
    def no_emails_will_change!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_no_applications!; end

    sig { void }
    def restore_no_comments!; end

    sig { void }
    def restore_no_emails!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_no_applications; end

    sig { returns(T::Boolean) }
    def saved_change_to_no_applications?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_no_comments; end

    sig { returns(T::Boolean) }
    def saved_change_to_no_comments?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_no_emails; end

    sig { returns(T::Boolean) }
    def saved_change_to_no_emails?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_updated_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_updated_at?; end

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
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_no_applications?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_no_comments?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_no_emails?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end

  module GeneratedRelationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def in_past_week(*args, &blk); end
  end
end