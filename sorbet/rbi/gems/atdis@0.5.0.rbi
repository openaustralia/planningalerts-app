# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `atdis` gem.
# Please instead update this file by running `bin/tapioca gem atdis`.

# typed: true

module ATDIS; end

class ATDIS::ErrorMessage < ::Struct
  def empty?; end
  def message; end
  def message=(_); end
  def spec_section; end
  def spec_section=(_); end
  def to_s; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ATDIS::Feed
  def initialize(base_url, timezone, ignore_ssl_certificate = T.unsafe(nil)); end

  def application(id); end
  def application_url(id); end
  def applications(options = T.unsafe(nil)); end
  def applications_url(options = T.unsafe(nil)); end
  def base_url; end
  def ignore_ssl_certificate; end
  def timezone; end

  class << self
    def base_url_from_url(url); end
    def escape(value); end
    def options_from_url(url); end
    def options_to_query(options); end
    def query_to_options(query); end
  end
end

ATDIS::Feed::VALID_OPTIONS = T.let(T.unsafe(nil), Array)

class ATDIS::Model
  include ::ActiveModel::Validations
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods
  include ::ATDIS::Validators
  include ::ActiveModel::AttributeMethods
  include ::ATDIS::TypeCastAttributes
  extend ::ActiveModel::Validations::ClassMethods
  extend ::ActiveModel::Naming
  extend ::Searchkick::Model
  extend ::ActiveModel::Callbacks
  extend ::ActiveSupport::Callbacks::ClassMethods
  extend ::ActiveSupport::DescendantsTracker
  extend ::ActiveModel::Translation
  extend ::ActiveModel::Validations::HelperMethods
  extend ::ActiveModel::AttributeMethods::ClassMethods
  extend ::ATDIS::TypeCastAttributes::ClassMethods

  def initialize(params, timezone); end

  def __callbacks; end
  def __callbacks?; end
  def _run_validate_callbacks(&block); end
  def _validate_callbacks; end
  def _validators; end
  def _validators?; end
  def attribute_aliases; end
  def attribute_aliases?; end
  def attribute_method_matchers; end
  def attribute_method_matchers?; end
  def attribute_types; end
  def attribute_types=(_arg0); end
  def attribute_types?; end
  def attributes; end
  def attributes_before_type_cast; end
  def json_errors; end
  def json_errors_in_children; end
  def json_errors_local; end
  def json_left_overs; end
  def json_left_overs=(_arg0); end
  def json_left_overs_is_empty; end
  def json_load_error; end
  def json_load_error=(_arg0); end
  def json_loaded_correctly!; end
  def model_name(*_arg0, &_arg1); end
  def timezone; end
  def url; end
  def url=(_arg0); end
  def used_attribute?(attribute); end
  def validation_context; end

  private

  def attribute(attr); end
  def attribute=(attr, value); end
  def attribute_before_type_cast(attr); end
  def validation_context=(_arg0); end

  class << self
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validate_callbacks; end
    def _validate_callbacks=(value); end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
    def attribute_aliases; end
    def attribute_aliases=(value); end
    def attribute_aliases?; end
    def attribute_keys; end
    def attribute_method_matchers; end
    def attribute_method_matchers=(value); end
    def attribute_method_matchers?; end
    def attribute_names; end
    def attribute_types; end
    def attribute_types=(value); end
    def attribute_types?; end
    def cast(value, type, timezone); end
    def cast_datetime(value, timezone); end
    def cast_geojson(value); end
    def cast_integer(value); end
    def cast_string(value); end
    def cast_uri(value); end
    def hash_symbols_to_string(hash); end
    def interpret(data, timezone); end
    def partition_by_used(data); end
    def read_json(text, timezone); end
    def read_url(url, timezone, ignore_ssl_certificate = T.unsafe(nil)); end
    def read_url_raw(url, ignore_ssl_certificate = T.unsafe(nil)); end
  end
end

module ATDIS::Models; end

class ATDIS::Models::Address < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Application < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Authority < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Document < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Event < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Info < ::ATDIS::Model
  def dat_id_is_url_encoded!; end
  def notification_dates_consistent!; end
  def related_apps_url_format; end

  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
    def url_encoded?(str); end
  end
end

class ATDIS::Models::LandTitleRef < ::ATDIS::Model
  def check_title_presence; end

  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Location < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Page < ::ATDIS::Model
  def all_pagination_is_present; end
  def count_is_consistent; end
  def next_page; end
  def next_url; end
  def previous_page; end
  def previous_url; end

  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Pagination < ::ATDIS::Model
  def all_pagination_is_present; end
  def count_is_consistent; end
  def current_is_consistent; end
  def next_is_consistent; end
  def previous_is_consistent; end

  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Person < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Reference < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::Response < ::ATDIS::Model
  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::Models::TorrensTitle < ::ATDIS::Model
  def section_can_not_be_empty_string; end

  class << self
    def __callbacks; end
    def _validators; end
    def attribute_types; end
  end
end

class ATDIS::SeparatedURL
  class << self
    def combine(url, url_params); end
    def merge(full_url, params); end
    def split(full_url); end
  end
end

module ATDIS::TypeCastAttributes
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ATDIS::TypeCastAttributes::ClassMethods
end

module ATDIS::TypeCastAttributes::ClassMethods
  def field_mappings(params); end
end

module ATDIS::Validators; end

class ATDIS::Validators::ArrayHttpUrlValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::ArrayValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::DateTimeValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::FilledArrayValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::GeoJsonValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::HttpUrlValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

class ATDIS::Validators::PresenceBeforeTypeCastValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, _value); end
end

class ATDIS::Validators::ValidValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

module Atdis; end
Atdis::VERSION = T.let(T.unsafe(nil), String)