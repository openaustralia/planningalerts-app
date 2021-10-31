# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-rails` gem.
# Please instead update this file by running `bin/tapioca gem rspec-rails`.

# typed: true

module RSpec
  extend ::RSpec::Support::Warnings
  extend ::RSpec::Core::Warnings

  class << self
    def clear_examples; end
    def configuration; end
    def configuration=(_arg0); end
    def configure; end
    def const_missing(name); end
    def context(*args, &example_group_block); end
    def current_example; end
    def current_example=(example); end
    def describe(*args, &example_group_block); end
    def example_group(*args, &example_group_block); end
    def fcontext(*args, &example_group_block); end
    def fdescribe(*args, &example_group_block); end
    def reset; end
    def shared_context(name, *args, &block); end
    def shared_examples(name, *args, &block); end
    def shared_examples_for(name, *args, &block); end
    def world; end
    def world=(_arg0); end
    def xcontext(*args, &example_group_block); end
    def xdescribe(*args, &example_group_block); end
  end
end

RSpec::MODULES_TO_AUTOLOAD = T.let(T.unsafe(nil), Hash)
module RSpec::Rails; end

module RSpec::Rails::FeatureCheck
  private

  def has_action_cable_testing?; end
  def has_action_mailbox?; end
  def has_action_mailer?; end
  def has_action_mailer_parameterized?; end
  def has_action_mailer_preview?; end
  def has_action_mailer_unified_delivery?; end
  def has_active_job?; end
  def has_active_record?; end
  def has_active_record_migration?; end
  def type_metatag(type); end

  class << self
    def has_action_cable_testing?; end
    def has_action_mailbox?; end
    def has_action_mailer?; end
    def has_action_mailer_parameterized?; end
    def has_action_mailer_preview?; end
    def has_action_mailer_unified_delivery?; end
    def has_active_job?; end
    def has_active_record?; end
    def has_active_record_migration?; end
    def type_metatag(type); end
  end
end

class RSpec::Rails::Railtie < ::Rails::Railtie
  private

  def config_default_preview_path(options); end
  def config_preview_path?(options); end
  def setup_preview_path(app); end
  def supports_action_mailer_previews?(config); end
end

RSpec::SharedContext = RSpec::Core::SharedContext
