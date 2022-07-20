# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `validates_email_format_of` gem.
# Please instead update this file by running `bin/tapioca gem validates_email_format_of`.

# typed: true

module ActiveModel
  extend ::ActiveSupport::Autoload

  class << self
    def eager_load!; end
    def gem_version; end
    def version; end
  end
end

module ActiveModel::Validations
  extend ::ActiveSupport::Concern
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods

  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods
  mixes_in_class_methods ::ActiveModel::Naming
  mixes_in_class_methods ::Searchkick::Model
  mixes_in_class_methods ::ActiveModel::Callbacks
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModel::Translation
  mixes_in_class_methods ::ActiveModel::Validations::HelperMethods

  def errors; end
  def invalid?(context = T.unsafe(nil)); end
  def read_attribute_for_validation(*_arg0); end
  def valid?(context = T.unsafe(nil)); end
  def validate(context = T.unsafe(nil)); end
  def validate!(context = T.unsafe(nil)); end
  def validates_with(*args, &block); end

  private

  def initialize_dup(other); end
  def raise_validation_error; end
  def run_validations!; end
end

class ActiveModel::Validations::EmailFormatValidator < ::ActiveModel::EachValidator
  def validate_each(record, attribute, value); end
end

module ActiveModel::Validations::HelperMethods
  def validates_absence_of(*attr_names); end
  def validates_acceptance_of(*attr_names); end
  def validates_confirmation_of(*attr_names); end
  def validates_email_format_of(*attr_names); end
  def validates_exclusion_of(*attr_names); end
  def validates_format_of(*attr_names); end
  def validates_inclusion_of(*attr_names); end
  def validates_length_of(*attr_names); end
  def validates_numericality_of(*attr_names); end
  def validates_presence_of(*attr_names); end
  def validates_size_of(*attr_names); end

  private

  def _merge_attributes(attr_names); end
end

module ValidatesEmailFormatOf
  class << self
    def default_message; end
    def load_i18n_locales; end
    def validate_domain_part_syntax(domain); end
    def validate_email_domain(email); end
    def validate_email_format(email, options = T.unsafe(nil)); end
    def validate_local_part_syntax(local); end
  end
end

ValidatesEmailFormatOf::DEFAULT_MESSAGE = T.let(T.unsafe(nil), String)
ValidatesEmailFormatOf::DEFAULT_MX_MESSAGE = T.let(T.unsafe(nil), String)
ValidatesEmailFormatOf::ERROR_MESSAGE_I18N_KEY = T.let(T.unsafe(nil), Symbol)
ValidatesEmailFormatOf::ERROR_MX_MESSAGE_I18N_KEY = T.let(T.unsafe(nil), Symbol)
ValidatesEmailFormatOf::LocalPartSpecialChars = T.let(T.unsafe(nil), Regexp)
class ValidatesEmailFormatOf::Railtie < ::Rails::Railtie; end
ValidatesEmailFormatOf::VERSION = T.let(T.unsafe(nil), String)