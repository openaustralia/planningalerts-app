# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `validate_url` gem.
# Please instead update this file by running `bin/tapioca gem validate_url`.


# source://validate_url//lib/validate_url.rb#6
module ActiveModel
  class << self
    # source://activemodel/7.0.8.4/lib/active_model.rb#72
    def eager_load!; end

    # source://activemodel/7.0.8.4/lib/active_model/gem_version.rb#5
    def gem_version; end

    # source://activemodel/7.0.8.4/lib/active_model/version.rb#7
    def version; end
  end
end

# source://validate_url//lib/validate_url.rb#7
module ActiveModel::Validations
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods
  mixes_in_class_methods ::ActiveModel::Callbacks
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModel::Translation
  mixes_in_class_methods ::ActiveModel::Validations::HelperMethods

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#301
  def errors; end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#373
  def invalid?(context = T.unsafe(nil)); end

  def read_attribute_for_validation(*_arg0); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#334
  def valid?(context = T.unsafe(nil)); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#334
  def validate(context = T.unsafe(nil)); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#382
  def validate!(context = T.unsafe(nil)); end

  # source://activemodel/7.0.8.4/lib/active_model/validations/with.rb#137
  def validates_with(*args, &block); end

  private

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#283
  def initialize_dup(other); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#410
  def raise_validation_error; end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#405
  def run_validations!; end

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
    def _validators; end
    def _validators?; end
  end
end

# source://validate_url//lib/validate_url.rb#70
module ActiveModel::Validations::ClassMethods
  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#270
  def attribute_method?(attribute); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#234
  def clear_validators!; end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#275
  def inherited(base); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#152
  def validate(*args, &block); end

  # source://activemodel/7.0.8.4/lib/active_model/validations/validates.rb#106
  def validates(*attributes); end

  # source://activemodel/7.0.8.4/lib/active_model/validations/validates.rb#148
  def validates!(*attributes); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#85
  def validates_each(*attr_names, &block); end

  # Validates whether the value of the specified attribute is valid url.
  #
  #   class Unicorn
  #     include ActiveModel::Validations
  #     attr_accessor :homepage, :ftpsite
  #     validates_url :homepage, allow_blank: true
  #     validates_url :ftpsite, schemes: ['ftp']
  #   end
  # Configuration options:
  # * <tt>:message</tt> - A custom error message (default is: "is not a valid URL").
  # * <tt>:allow_nil</tt> - If set to true, skips this validation if the attribute is +nil+ (default is +false+).
  # * <tt>:allow_blank</tt> - If set to true, skips this validation if the attribute is blank (default is +false+).
  # * <tt>:schemes</tt> - Array of URI schemes to validate against. (default is +['http', 'https']+)
  #
  # source://validate_url//lib/validate_url.rb#85
  def validates_url(*attr_names); end

  # source://activemodel/7.0.8.4/lib/active_model/validations/with.rb#81
  def validates_with(*args, &block); end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#192
  def validators; end

  # source://activemodel/7.0.8.4/lib/active_model/validations.rb#254
  def validators_on(*attributes); end

  private

  # source://activemodel/7.0.8.4/lib/active_model/validations/validates.rb#161
  def _parse_validates_options(options); end

  # source://activemodel/7.0.8.4/lib/active_model/validations/validates.rb#157
  def _validates_default_keys; end
end

# source://validate_url//lib/validate_url.rb#8
class ActiveModel::Validations::UrlValidator < ::ActiveModel::EachValidator
  # @return [UrlValidator] a new instance of UrlValidator
  #
  # source://validate_url//lib/validate_url.rb#11
  def initialize(options); end

  # source://validate_url//lib/validate_url.rb#21
  def validate_each(record, attribute, value); end

  protected

  # source://validate_url//lib/validate_url.rb#46
  def filtered_options(value); end

  # source://validate_url//lib/validate_url.rb#52
  def validate_url(record, attribute, value, schemes); end
end

# source://validate_url//lib/validate_url.rb#9
ActiveModel::Validations::UrlValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), Array)
