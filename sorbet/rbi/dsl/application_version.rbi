# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ApplicationVersion`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class ApplicationVersion
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods

  module GeneratedAssociationMethods
    sig { returns(T.nilable(::Application)) }
    def application; end

    sig { params(value: T.nilable(::Application)).void }
    def application=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def build_application(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def build_previous_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def create_application(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::Application) }
    def create_application!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_previous_version(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ApplicationVersion) }
    def create_previous_version!(*args, &blk); end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def previous_version; end

    sig { params(value: T.nilable(::ApplicationVersion)).void }
    def previous_version=(value); end

    sig { returns(T.nilable(::Application)) }
    def reload_application; end

    sig { returns(T.nilable(::ApplicationVersion)) }
    def reload_previous_version; end
  end

  module GeneratedAttributeMethods
    sig { returns(::String) }
    def address; end

    sig { params(value: ::String).returns(::String) }
    def address=(value); end

    sig { returns(T::Boolean) }
    def address?; end

    sig { returns(T.nilable(::String)) }
    def address_before_last_save; end

    sig { returns(T.untyped) }
    def address_before_type_cast; end

    sig { returns(T::Boolean) }
    def address_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def address_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def address_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def address_changed?; end

    sig { returns(T.nilable(::String)) }
    def address_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def address_previous_change; end

    sig { returns(T::Boolean) }
    def address_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def address_previously_was; end

    sig { returns(T.nilable(::String)) }
    def address_was; end

    sig { void }
    def address_will_change!; end

    sig { returns(::Integer) }
    def application_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def application_id=(value); end

    sig { returns(T::Boolean) }
    def application_id?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_before_last_save; end

    sig { returns(T.untyped) }
    def application_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def application_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def application_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def application_id_previous_change; end

    sig { returns(T::Boolean) }
    def application_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def application_id_was; end

    sig { void }
    def application_id_will_change!; end

    sig { returns(T.nilable(::String)) }
    def comment_url; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def comment_url=(value); end

    sig { returns(T::Boolean) }
    def comment_url?; end

    sig { returns(T.nilable(::String)) }
    def comment_url_before_last_save; end

    sig { returns(T.untyped) }
    def comment_url_before_type_cast; end

    sig { returns(T::Boolean) }
    def comment_url_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def comment_url_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def comment_url_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def comment_url_changed?; end

    sig { returns(T.nilable(::String)) }
    def comment_url_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def comment_url_previous_change; end

    sig { returns(T::Boolean) }
    def comment_url_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def comment_url_previously_was; end

    sig { returns(T.nilable(::String)) }
    def comment_url_was; end

    sig { void }
    def comment_url_will_change!; end

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

    sig { returns(T::Boolean) }
    def current; end

    sig { params(value: T::Boolean).returns(T::Boolean) }
    def current=(value); end

    sig { returns(T::Boolean) }
    def current?; end

    sig { returns(T.nilable(T::Boolean)) }
    def current_before_last_save; end

    sig { returns(T.untyped) }
    def current_before_type_cast; end

    sig { returns(T::Boolean) }
    def current_came_from_user?; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def current_change; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def current_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def current_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def current_in_database; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def current_previous_change; end

    sig { returns(T::Boolean) }
    def current_previously_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def current_previously_was; end

    sig { returns(T.nilable(T::Boolean)) }
    def current_was; end

    sig { void }
    def current_will_change!; end

    sig { returns(T.nilable(::Date)) }
    def date_received; end

    sig { params(value: T.nilable(::Date)).returns(T.nilable(::Date)) }
    def date_received=(value); end

    sig { returns(T::Boolean) }
    def date_received?; end

    sig { returns(T.nilable(::Date)) }
    def date_received_before_last_save; end

    sig { returns(T.untyped) }
    def date_received_before_type_cast; end

    sig { returns(T::Boolean) }
    def date_received_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def date_received_change; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def date_received_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def date_received_changed?; end

    sig { returns(T.nilable(::Date)) }
    def date_received_in_database; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def date_received_previous_change; end

    sig { returns(T::Boolean) }
    def date_received_previously_changed?; end

    sig { returns(T.nilable(::Date)) }
    def date_received_previously_was; end

    sig { returns(T.nilable(::Date)) }
    def date_received_was; end

    sig { void }
    def date_received_will_change!; end

    sig { returns(::ActiveSupport::TimeWithZone) }
    def date_scraped; end

    sig { params(value: ::ActiveSupport::TimeWithZone).returns(::ActiveSupport::TimeWithZone) }
    def date_scraped=(value); end

    sig { returns(T::Boolean) }
    def date_scraped?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def date_scraped_before_last_save; end

    sig { returns(T.untyped) }
    def date_scraped_before_type_cast; end

    sig { returns(T::Boolean) }
    def date_scraped_came_from_user?; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def date_scraped_change; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def date_scraped_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def date_scraped_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def date_scraped_in_database; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def date_scraped_previous_change; end

    sig { returns(T::Boolean) }
    def date_scraped_previously_changed?; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def date_scraped_previously_was; end

    sig { returns(T.nilable(::ActiveSupport::TimeWithZone)) }
    def date_scraped_was; end

    sig { void }
    def date_scraped_will_change!; end

    sig { returns(::String) }
    def description; end

    sig { params(value: ::String).returns(::String) }
    def description=(value); end

    sig { returns(T::Boolean) }
    def description?; end

    sig { returns(T.nilable(::String)) }
    def description_before_last_save; end

    sig { returns(T.untyped) }
    def description_before_type_cast; end

    sig { returns(T::Boolean) }
    def description_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def description_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def description_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def description_changed?; end

    sig { returns(T.nilable(::String)) }
    def description_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def description_previous_change; end

    sig { returns(T::Boolean) }
    def description_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def description_previously_was; end

    sig { returns(T.nilable(::String)) }
    def description_was; end

    sig { void }
    def description_will_change!; end

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

    sig { returns(::String) }
    def info_url; end

    sig { params(value: ::String).returns(::String) }
    def info_url=(value); end

    sig { returns(T::Boolean) }
    def info_url?; end

    sig { returns(T.nilable(::String)) }
    def info_url_before_last_save; end

    sig { returns(T.untyped) }
    def info_url_before_type_cast; end

    sig { returns(T::Boolean) }
    def info_url_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def info_url_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def info_url_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def info_url_changed?; end

    sig { returns(T.nilable(::String)) }
    def info_url_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def info_url_previous_change; end

    sig { returns(T::Boolean) }
    def info_url_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def info_url_previously_was; end

    sig { returns(T.nilable(::String)) }
    def info_url_was; end

    sig { void }
    def info_url_will_change!; end

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

    sig { returns(T.nilable(::Date)) }
    def on_notice_from; end

    sig { params(value: T.nilable(::Date)).returns(T.nilable(::Date)) }
    def on_notice_from=(value); end

    sig { returns(T::Boolean) }
    def on_notice_from?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_from_before_last_save; end

    sig { returns(T.untyped) }
    def on_notice_from_before_type_cast; end

    sig { returns(T::Boolean) }
    def on_notice_from_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_from_change; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_from_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def on_notice_from_changed?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_from_in_database; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_from_previous_change; end

    sig { returns(T::Boolean) }
    def on_notice_from_previously_changed?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_from_previously_was; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_from_was; end

    sig { void }
    def on_notice_from_will_change!; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_to; end

    sig { params(value: T.nilable(::Date)).returns(T.nilable(::Date)) }
    def on_notice_to=(value); end

    sig { returns(T::Boolean) }
    def on_notice_to?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_to_before_last_save; end

    sig { returns(T.untyped) }
    def on_notice_to_before_type_cast; end

    sig { returns(T::Boolean) }
    def on_notice_to_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_to_change; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_to_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def on_notice_to_changed?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_to_in_database; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def on_notice_to_previous_change; end

    sig { returns(T::Boolean) }
    def on_notice_to_previously_changed?; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_to_previously_was; end

    sig { returns(T.nilable(::Date)) }
    def on_notice_to_was; end

    sig { void }
    def on_notice_to_will_change!; end

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

    sig { returns(T.nilable(::Integer)) }
    def previous_version_id; end

    sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
    def previous_version_id=(value); end

    sig { returns(T::Boolean) }
    def previous_version_id?; end

    sig { returns(T.nilable(::Integer)) }
    def previous_version_id_before_last_save; end

    sig { returns(T.untyped) }
    def previous_version_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def previous_version_id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def previous_version_id_change; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def previous_version_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def previous_version_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def previous_version_id_in_database; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def previous_version_id_previous_change; end

    sig { returns(T::Boolean) }
    def previous_version_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def previous_version_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def previous_version_id_was; end

    sig { void }
    def previous_version_id_will_change!; end

    sig { void }
    def restore_address!; end

    sig { void }
    def restore_application_id!; end

    sig { void }
    def restore_comment_url!; end

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_current!; end

    sig { void }
    def restore_date_received!; end

    sig { void }
    def restore_date_scraped!; end

    sig { void }
    def restore_description!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_info_url!; end

    sig { void }
    def restore_lat!; end

    sig { void }
    def restore_lng!; end

    sig { void }
    def restore_on_notice_from!; end

    sig { void }
    def restore_on_notice_to!; end

    sig { void }
    def restore_postcode!; end

    sig { void }
    def restore_previous_version_id!; end

    sig { void }
    def restore_state!; end

    sig { void }
    def restore_suburb!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_address; end

    sig { returns(T::Boolean) }
    def saved_change_to_address?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_application_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_application_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_comment_url; end

    sig { returns(T::Boolean) }
    def saved_change_to_comment_url?; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def saved_change_to_current; end

    sig { returns(T::Boolean) }
    def saved_change_to_current?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def saved_change_to_date_received; end

    sig { returns(T::Boolean) }
    def saved_change_to_date_received?; end

    sig { returns(T.nilable([::ActiveSupport::TimeWithZone, ::ActiveSupport::TimeWithZone])) }
    def saved_change_to_date_scraped; end

    sig { returns(T::Boolean) }
    def saved_change_to_date_scraped?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_description; end

    sig { returns(T::Boolean) }
    def saved_change_to_description?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_info_url; end

    sig { returns(T::Boolean) }
    def saved_change_to_info_url?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lat; end

    sig { returns(T::Boolean) }
    def saved_change_to_lat?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lng; end

    sig { returns(T::Boolean) }
    def saved_change_to_lng?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def saved_change_to_on_notice_from; end

    sig { returns(T::Boolean) }
    def saved_change_to_on_notice_from?; end

    sig { returns(T.nilable([T.nilable(::Date), T.nilable(::Date)])) }
    def saved_change_to_on_notice_to; end

    sig { returns(T::Boolean) }
    def saved_change_to_on_notice_to?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_postcode; end

    sig { returns(T::Boolean) }
    def saved_change_to_postcode?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_previous_version_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_previous_version_id?; end

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
    def will_save_change_to_address?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_application_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_comment_url?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_current?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_date_received?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_date_scraped?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_description?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_info_url?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lat?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lng?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_on_notice_from?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_on_notice_to?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_postcode?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_previous_version_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_state?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_suburb?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end
end