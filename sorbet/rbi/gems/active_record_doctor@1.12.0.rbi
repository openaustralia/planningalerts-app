# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `active_record_doctor` gem.
# Please instead update this file by running `bin/tapioca gem active_record_doctor`.


# source://active_record_doctor//lib/active_record_doctor/railtie.rb#3
module ActiveRecordDoctor
  class << self
    # This method is part of the public API that is intended for use by
    # active_record_doctor users. The remaining methods are considered to be
    # public-not-published.
    #
    # @raise [ActiveRecordDoctor::Error::ConfigureCalledTwice]
    #
    # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#11
    def configure(&block); end

    # The config file that's currently being processed by .load_config.
    #
    # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#6
    def current_config; end

    # source://active_record_doctor//lib/active_record_doctor/detectors.rb#7
    def detectors; end

    # source://active_record_doctor//lib/active_record_doctor/errors.rb#4
    def handle_exception; end

    # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#44
    def load_config(path); end

    # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#71
    def load_config_with_defaults(path); end
  end
end

# source://active_record_doctor//lib/active_record_doctor/config.rb#4
class ActiveRecordDoctor::Config < ::Struct
  # Returns the value of attribute detectors
  #
  # @return [Object] the current value of detectors
  def detectors; end

  # Sets the attribute detectors
  #
  # @param value [Object] the value to set the attribute detectors to.
  # @return [Object] the newly set value
  def detectors=(_); end

  # Returns the value of attribute globals
  #
  # @return [Object] the current value of globals
  def globals; end

  # Sets the attribute globals
  #
  # @param value [Object] the value to set the attribute globals to.
  # @return [Object] the newly set value
  def globals=(_); end

  # source://active_record_doctor//lib/active_record_doctor/config.rb#5
  def merge(config); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# Container module for all detectors, implemented as separate classes.
#
# source://active_record_doctor//lib/active_record_doctor/detectors.rb#19
module ActiveRecordDoctor::Detectors; end

# Base class for all active_record_doctor detectors.
#
# source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#6
class ActiveRecordDoctor::Detectors::Base
  # @return [Base] a new instance of Base
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#41
  def initialize(config:, logger:, io:); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#48
  def run; end

  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#138
  def check_constraints(table_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#127
  def column(table_name, column_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#75
  def config(key); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#112
  def connection; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#87
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#294
  def each_association(model, except: T.unsafe(nil), type: T.unsafe(nil), has_scope: T.unsafe(nil), through: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#216
  def each_attribute(model, except: T.unsafe(nil), type: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#233
  def each_column(table_name, only: T.unsafe(nil), except: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#280
  def each_data_source(except: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#248
  def each_foreign_key(table_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#190
  def each_index(table_name, except: T.unsafe(nil), multicolumn_only: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#167
  def each_model(except: T.unsafe(nil), abstract: T.unsafe(nil), existing_tables_only: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#258
  def each_table(except: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#116
  def indexes(table_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#95
  def log(message, &block); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#91
  def message(**_attrs); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#159
  def models; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#131
  def not_null_check_constraint_exists?(table, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#120
  def primary_key(table_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#99
  def problem!(**attrs); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#163
  def underscored_name; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#108
  def warning(message); end

  class << self
    # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#24
    def config; end

    # Returns the value of attribute description.
    #
    # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#14
    def description; end

    # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#28
    def locals_and_globals; end

    # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#16
    def run(*args, **kwargs, &block); end

    # source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#20
    def underscored_name; end
  end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/base.rb#7
ActiveRecordDoctor::Detectors::Base::BASE_CONFIG = T.let(T.unsafe(nil), Hash)

# source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#7
class ActiveRecordDoctor::Detectors::ExtraneousIndexes < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#32
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#60
  def indexed_primary_keys; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#22
  def message(table:, extraneous_index:, replacement_indexes:); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#92
  def opclasses(index); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#96
  def prefix?(lhs, rhs); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#73
  def replaceable_with?(index1, index2); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/extraneous_indexes.rb#37
  def subindexes_of_multi_column_indexes; end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_boolean_presence_validation.rb#7
class ActiveRecordDoctor::Detectors::IncorrectBooleanPresenceValidation < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_boolean_presence_validation.rb#27
  def detect; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_boolean_presence_validation.rb#38
  def has_presence_validator?(model, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_boolean_presence_validation.rb#21
  def message(model:, attribute:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#7
class ActiveRecordDoctor::Detectors::IncorrectDependentOption < ::ActiveRecordDoctor::Detectors::Base
  private

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#161
  def defines_destroy_callbacks?(model); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#145
  def deletable?(model); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#175
  def dependent_models(model); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#53
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#181
  def foreign_key(from_table, to_table); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#21
  def message(model:, association:, problem:, associated_models_type: T.unsafe(nil), table_name: T.unsafe(nil), column_name: T.unsafe(nil), associated_models: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#134
  def models_having_association_with_options(as:); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_dependent_option.rb#157
  def through?(reflection); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_length_validation.rb#7
class ActiveRecordDoctor::Detectors::IncorrectLengthValidation < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_length_validation.rb#33
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_length_validation.rb#50
  def maximum_allowed_by_validations(model, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/incorrect_length_validation.rb#21
  def message(model:, attribute:, table:, database_maximum:, model_maximum:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/mismatched_foreign_key_type.rb#7
class ActiveRecordDoctor::Detectors::MismatchedForeignKeyType < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/mismatched_foreign_key_type.rb#27
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/mismatched_foreign_key_type.rb#21
  def message(from_table:, from_column:, from_type:, to_table:, to_column:, to_type:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#7
class ActiveRecordDoctor::Detectors::MissingForeignKeys < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#25
  def detect; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#44
  def foreign_key?(table, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#21
  def message(table:, column:); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#40
  def named_like_foreign_key?(column); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_foreign_keys.rb#50
  def polymorphic_foreign_key?(table, column); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#7
class ActiveRecordDoctor::Detectors::MissingNonNullConstraint < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#25
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#21
  def message(column:, table:); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#51
  def non_null_needed?(model, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#65
  def required_presence_validators(model); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_non_null_constraint.rb#46
  def sti_base_model?(model); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#7
class ActiveRecordDoctor::Detectors::MissingPresenceValidation < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#25
  def detect; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#61
  def exclusion_validator_present?(model, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#86
  def inclusion_validator_items(validator); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#50
  def inclusion_validator_present?(model, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#21
  def message(column:, model:); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#72
  def presence_validator_present?(model, column); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#36
  def validator_needed?(model, column); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_presence_validation.rb#41
  def validator_present?(model, column); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#7
class ActiveRecordDoctor::Detectors::MissingUniqueIndexes < ::ActiveRecordDoctor::Detectors::Base
  private

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#102
  def conditional_validator?(validator); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#35
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#143
  def extract_index_columns(columns); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#81
  def has_ones_without_indexes; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#137
  def ignore_columns; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#22
  def message(model:, table:, columns:, problem:); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#106
  def resolve_attributes(model, attributes); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#120
  def unique_index?(table_name, columns, scope = T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/missing_unique_indexes.rb#40
  def validations_without_indexes; end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/short_primary_key_type.rb#7
class ActiveRecordDoctor::Detectors::ShortPrimaryKeyType < ::ActiveRecordDoctor::Detectors::Base
  private

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/short_primary_key_type.rb#32
  def bigint?(column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/short_primary_key_type.rb#22
  def detect; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/short_primary_key_type.rb#40
  def integer?(column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/short_primary_key_type.rb#18
  def message(table:, column:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/undefined_table_references.rb#7
class ActiveRecordDoctor::Detectors::UndefinedTableReferences < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/undefined_table_references.rb#22
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/undefined_table_references.rb#18
  def message(model:, table:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_deleted_at.rb#7
class ActiveRecordDoctor::Detectors::UnindexedDeletedAt < ::ActiveRecordDoctor::Detectors::Base
  private

  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_deleted_at.rb#33
  def detect; end

  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_deleted_at.rb#27
  def message(index:, column_name:); end
end

# source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#7
class ActiveRecordDoctor::Detectors::UnindexedForeignKeys < ::ActiveRecordDoctor::Detectors::Base
  private

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#70
  def column_exists?(table, column_name); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#27
  def detect; end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#52
  def foreign_key?(table, column); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#58
  def indexed?(table, column); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#64
  def indexed_as_polymorphic?(table, column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#21
  def message(table:, columns:); end

  # @return [Boolean]
  #
  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#48
  def named_like_foreign_key?(column); end

  # source://active_record_doctor//lib/active_record_doctor/detectors/unindexed_foreign_keys.rb#74
  def type_column_name(column); end
end

# Generic active_record_doctor exception class.
#
# source://active_record_doctor//lib/active_record_doctor/errors.rb#12
class ActiveRecordDoctor::Error < ::RuntimeError
  # Returns the value of attribute config_path.
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#13
  def config_path; end

  # Sets the attribute config_path
  #
  # @param value the value to set the attribute config_path to.
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#13
  def config_path=(_arg0); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#19
  def details; end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#23
  def user_message; end

  private

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#48
  def config_path_or_message; end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#52
  def hyphenated_list(items); end

  class << self
    # source://active_record_doctor//lib/active_record_doctor/errors.rb#15
    def [](*args); end
  end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#78
class ActiveRecordDoctor::Error::ConfigurationError < ::ActiveRecordDoctor::Error
  # @return [ConfigurationError] a new instance of ConfigurationError
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#79
  def initialize(exc); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#84
  def details; end
end

# We don't need extra documentation for error classes because of their
# extensive error messages.
#
# source://active_record_doctor//lib/active_record_doctor/errors.rb#62
class ActiveRecordDoctor::Error::ConfigurationFileMissing < ::ActiveRecordDoctor::Error
  # @return [ConfigurationFileMissing] a new instance of ConfigurationFileMissing
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#63
  def initialize; end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#67
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#118
class ActiveRecordDoctor::Error::ConfigureCalledTwice < ::ActiveRecordDoctor::Error
  # @return [ConfigureCalledTwice] a new instance of ConfigureCalledTwice
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#119
  def initialize; end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#123
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#102
class ActiveRecordDoctor::Error::ConfigureNotCalled < ::ActiveRecordDoctor::Error
  # @return [ConfigureNotCalled] a new instance of ConfigureNotCalled
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#103
  def initialize; end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#107
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#132
class ActiveRecordDoctor::Error::DetectorConfiguredTwice < ::ActiveRecordDoctor::Error
  # @return [DetectorConfiguredTwice] a new instance of DetectorConfiguredTwice
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#133
  def initialize(detector); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#137
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#210
class ActiveRecordDoctor::Error::DuplicateGlobalSetting < ::ActiveRecordDoctor::Error
  # @return [DuplicateGlobalSetting] a new instance of DuplicateGlobalSetting
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#211
  def initialize(name); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#215
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#150
class ActiveRecordDoctor::Error::UnrecognizedDetectorName < ::ActiveRecordDoctor::Error
  # @return [UnrecognizedDetectorName] a new instance of UnrecognizedDetectorName
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#151
  def initialize(detector, recognized_detectors); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#156
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#168
class ActiveRecordDoctor::Error::UnrecognizedDetectorSettings < ::ActiveRecordDoctor::Error
  # @return [UnrecognizedDetectorSettings] a new instance of UnrecognizedDetectorSettings
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#169
  def initialize(detector, unrecognized_settings, recognized_settings); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#176
  def details; end
end

# source://active_record_doctor//lib/active_record_doctor/errors.rb#192
class ActiveRecordDoctor::Error::UnrecognizedGlobalSetting < ::ActiveRecordDoctor::Error
  # @return [UnrecognizedGlobalSetting] a new instance of UnrecognizedGlobalSetting
  #
  # source://active_record_doctor//lib/active_record_doctor/errors.rb#193
  def initialize(name, recognized_settings); end

  # source://active_record_doctor//lib/active_record_doctor/errors.rb#198
  def details; end
end

# Turn a detector class into a human-readable help text.
#
# source://active_record_doctor//lib/active_record_doctor/help.rb#5
class ActiveRecordDoctor::Help
  # @return [Help] a new instance of Help
  #
  # source://active_record_doctor//lib/active_record_doctor/help.rb#6
  def initialize(klass); end

  # source://active_record_doctor//lib/active_record_doctor/help.rb#10
  def to_s; end

  private

  # source://active_record_doctor//lib/active_record_doctor/help.rb#26
  def config_to_s; end

  # Returns the value of attribute klass.
  #
  # source://active_record_doctor//lib/active_record_doctor/help.rb#21
  def klass; end
end

# source://active_record_doctor//lib/active_record_doctor/help.rb#23
ActiveRecordDoctor::Help::GLOBAL_COMMENT = T.let(T.unsafe(nil), String)

# source://active_record_doctor//lib/active_record_doctor/help.rb#24
ActiveRecordDoctor::Help::LOCAL_COMMENT = T.let(T.unsafe(nil), String)

# A class used for loading user-provided configuration files.
#
# source://active_record_doctor//lib/active_record_doctor/config/loader.rb#81
class ActiveRecordDoctor::Loader
  # @return [Loader] a new instance of Loader
  #
  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#82
  def initialize(config, recognized_globals, recognized_detectors, &block); end

  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#106
  def detector(name, settings); end

  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#89
  def global(name, value); end

  private

  # Returns the value of attribute config.
  #
  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#135
  def config; end

  # Returns the value of attribute recognized_detectors.
  #
  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#135
  def recognized_detectors; end

  # Returns the value of attribute recognized_globals.
  #
  # source://active_record_doctor//lib/active_record_doctor/config/loader.rb#135
  def recognized_globals; end
end

# source://active_record_doctor//lib/active_record_doctor/logger.rb#4
module ActiveRecordDoctor::Logger; end

# source://active_record_doctor//lib/active_record_doctor/logger/dummy.rb#5
class ActiveRecordDoctor::Logger::Dummy
  # source://active_record_doctor//lib/active_record_doctor/logger/dummy.rb#6
  def log(_message); end
end

# source://active_record_doctor//lib/active_record_doctor/logger/hierarchical.rb#5
class ActiveRecordDoctor::Logger::Hierarchical
  # @return [Hierarchical] a new instance of Hierarchical
  #
  # source://active_record_doctor//lib/active_record_doctor/logger/hierarchical.rb#6
  def initialize(io); end

  # source://active_record_doctor//lib/active_record_doctor/logger/hierarchical.rb#11
  def log(message); end
end

# source://active_record_doctor//lib/active_record_doctor/railtie.rb#4
class ActiveRecordDoctor::Railtie < ::Rails::Railtie; end

# source://active_record_doctor//lib/active_record_doctor/rake/task.rb#6
module ActiveRecordDoctor::Rake; end

# A Rake task for calling active_record_doctor detectors.
#
# The three supported attributes are:
#
#   - deps - project-specific Rake dependencies, e.g. :environment in Rails.
#   - config_path - active_record_doctor configuration file path.
#   - setup - a callable (responding to #call) responsible for finishing.
#     the setup process after deps are invoked, e.g. preloading models.
#
# The dependencies between Rake tasks are:
#
#    active_record_doctor:<detector> => active_record_doctor:setup => <deps>
#
# active_record_doctor:setup is where the setup callable is called.
#
# source://active_record_doctor//lib/active_record_doctor/rake/task.rb#21
class ActiveRecordDoctor::Rake::Task < ::Rake::TaskLib
  # @return [Task] a new instance of Task
  # @yield [_self]
  # @yieldparam _self [ActiveRecordDoctor::Rake::Task] the object that the method was called on
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#24
  def initialize; end

  # Returns the value of attribute config_path.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def config_path; end

  # Sets the attribute config_path
  #
  # @param value the value to set the attribute config_path to.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def config_path=(_arg0); end

  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#36
  def define; end

  # Returns the value of attribute deps.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def deps; end

  # Sets the attribute deps
  #
  # @param value the value to set the attribute deps to.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def deps=(_arg0); end

  # Returns the value of attribute setup.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def setup; end

  # Sets the attribute setup
  #
  # @param value the value to set the attribute setup to.
  #
  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#22
  def setup=(_arg0); end

  private

  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#70
  def config; end

  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#77
  def logger; end

  # source://active_record_doctor//lib/active_record_doctor/rake/task.rb#66
  def runner; end
end

# An excecution environment for active_record_doctor that provides a config
# and an output device for use by detectors.
#
# source://active_record_doctor//lib/active_record_doctor/runner.rb#6
class ActiveRecordDoctor::Runner
  # io is injected via constructor parameters to facilitate testing.
  #
  # @return [Runner] a new instance of Runner
  #
  # source://active_record_doctor//lib/active_record_doctor/runner.rb#8
  def initialize(config:, logger:, io: T.unsafe(nil)); end

  # source://active_record_doctor//lib/active_record_doctor/runner.rb#37
  def help(name); end

  # source://active_record_doctor//lib/active_record_doctor/runner.rb#24
  def run_all; end

  # source://active_record_doctor//lib/active_record_doctor/runner.rb#14
  def run_one(name); end

  private

  # Returns the value of attribute config.
  #
  # source://active_record_doctor//lib/active_record_doctor/runner.rb#44
  def config; end

  # Returns the value of attribute io.
  #
  # source://active_record_doctor//lib/active_record_doctor/runner.rb#44
  def io; end

  # Returns the value of attribute logger.
  #
  # source://active_record_doctor//lib/active_record_doctor/runner.rb#44
  def logger; end
end

# source://active_record_doctor//lib/active_record_doctor/utils.rb#4
module ActiveRecordDoctor::Utils
  class << self
    # @return [Boolean]
    #
    # source://active_record_doctor//lib/active_record_doctor/utils.rb#14
    def expression_indexes_unsupported?(connection = T.unsafe(nil)); end

    # @return [Boolean]
    #
    # source://active_record_doctor//lib/active_record_doctor/utils.rb#10
    def mysql?(connection = T.unsafe(nil)); end

    # @return [Boolean]
    #
    # source://active_record_doctor//lib/active_record_doctor/utils.rb#6
    def postgresql?(connection = T.unsafe(nil)); end
  end
end

# source://active_record_doctor//lib/active_record_doctor/version.rb#4
ActiveRecordDoctor::VERSION = T.let(T.unsafe(nil), String)
