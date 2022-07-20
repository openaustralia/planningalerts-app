# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeocodeResult`.
# Please instead update this file by running `bin/tapioca dsl GeocodeResult`.

# typed: true

class GeocodeResult
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods

  module GeneratedAssociationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def build_geocode_query(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def create_geocode_query(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GeocodeQuery) }
    def create_geocode_query!(*args, &blk); end

    sig { returns(T.nilable(::GeocodeQuery)) }
    def geocode_query; end

    sig { params(value: T.nilable(::GeocodeQuery)).void }
    def geocode_query=(value); end

    sig { returns(T.nilable(::GeocodeQuery)) }
    def reload_geocode_query; end
  end

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

    sig { returns(T.nilable(::String)) }
    def full_address; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def full_address=(value); end

    sig { returns(T::Boolean) }
    def full_address?; end

    sig { returns(T.nilable(::String)) }
    def full_address_before_last_save; end

    sig { returns(T.untyped) }
    def full_address_before_type_cast; end

    sig { returns(T::Boolean) }
    def full_address_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def full_address_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_address_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def full_address_previous_change; end

    sig { returns(T::Boolean) }
    def full_address_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_address_previously_was; end

    sig { returns(T.nilable(::String)) }
    def full_address_was; end

    sig { void }
    def full_address_will_change!; end

    sig { returns(::Integer) }
    def geocode_query_id; end

    sig { params(value: ::Integer).returns(::Integer) }
    def geocode_query_id=(value); end

    sig { returns(T::Boolean) }
    def geocode_query_id?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_before_last_save; end

    sig { returns(T.untyped) }
    def geocode_query_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def geocode_query_id_came_from_user?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_change; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def geocode_query_id_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_in_database; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def geocode_query_id_previous_change; end

    sig { returns(T::Boolean) }
    def geocode_query_id_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def geocode_query_id_was; end

    sig { void }
    def geocode_query_id_will_change!; end

    sig { returns(::String) }
    def geocoder; end

    sig { params(value: ::String).returns(::String) }
    def geocoder=(value); end

    sig { returns(T::Boolean) }
    def geocoder?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_before_last_save; end

    sig { returns(T.untyped) }
    def geocoder_before_type_cast; end

    sig { returns(T::Boolean) }
    def geocoder_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def geocoder_changed?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def geocoder_previous_change; end

    sig { returns(T::Boolean) }
    def geocoder_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def geocoder_previously_was; end

    sig { returns(T.nilable(::String)) }
    def geocoder_was; end

    sig { void }
    def geocoder_will_change!; end

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

    sig { void }
    def restore_created_at!; end

    sig { void }
    def restore_full_address!; end

    sig { void }
    def restore_geocode_query_id!; end

    sig { void }
    def restore_geocoder!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_lat!; end

    sig { void }
    def restore_lng!; end

    sig { void }
    def restore_postcode!; end

    sig { void }
    def restore_state!; end

    sig { void }
    def restore_suburb!; end

    sig { void }
    def restore_updated_at!; end

    sig { returns(T.nilable([T.nilable(::ActiveSupport::TimeWithZone), T.nilable(::ActiveSupport::TimeWithZone)])) }
    def saved_change_to_created_at; end

    sig { returns(T::Boolean) }
    def saved_change_to_created_at?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_full_address; end

    sig { returns(T::Boolean) }
    def saved_change_to_full_address?; end

    sig { returns(T.nilable([::Integer, ::Integer])) }
    def saved_change_to_geocode_query_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_geocode_query_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_geocoder; end

    sig { returns(T::Boolean) }
    def saved_change_to_geocoder?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lat; end

    sig { returns(T::Boolean) }
    def saved_change_to_lat?; end

    sig { returns(T.nilable([T.nilable(::Float), T.nilable(::Float)])) }
    def saved_change_to_lng; end

    sig { returns(T::Boolean) }
    def saved_change_to_lng?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_postcode; end

    sig { returns(T::Boolean) }
    def saved_change_to_postcode?; end

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
    def will_save_change_to_created_at?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_full_address?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_geocode_query_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_geocoder?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lat?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_lng?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_postcode?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_state?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_suburb?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_updated_at?; end
  end
end