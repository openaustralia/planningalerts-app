# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SiteSetting`.
# Please instead update this file by running `bin/tapioca dsl SiteSetting`.

# typed: true

class SiteSetting
  include GeneratedAttributeMethods

  module GeneratedAttributeMethods
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
    def restore_created_at!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_settings!; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(T.untyped), T.nilable(T.untyped)])) }
    def saved_change_to_settings; end

    sig { returns(T::Boolean) }
    def saved_change_to_settings?; end

    sig { returns(T.nilable(T.untyped)) }
    def settings; end

    sig { params(value: T.nilable(T.untyped)).returns(T.nilable(T.untyped)) }
    def settings=(value); end

    sig { returns(T::Boolean) }
    def settings?; end

    sig { returns(T.nilable(T.untyped)) }
    def settings_before_last_save; end

    sig { returns(T.untyped) }
    def settings_before_type_cast; end

    sig { returns(T::Boolean) }
    def settings_came_from_user?; end

    sig { returns(T.nilable([T.nilable(T.untyped), T.nilable(T.untyped)])) }
    def settings_change; end

    sig { returns(T.nilable([T.nilable(T.untyped), T.nilable(T.untyped)])) }
    def settings_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def settings_changed?; end

    sig { returns(T.nilable(T.untyped)) }
    def settings_in_database; end

    sig { returns(T.nilable([T.nilable(T.untyped), T.nilable(T.untyped)])) }
    def settings_previous_change; end

    sig { returns(T::Boolean) }
    def settings_previously_changed?; end

    sig { returns(T.nilable(T.untyped)) }
    def settings_previously_was; end

    sig { returns(T.nilable(T.untyped)) }
    def settings_was; end

    sig { void }
    def settings_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_settings?; end
  end
end