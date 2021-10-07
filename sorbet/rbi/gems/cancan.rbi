# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/cancan/all/cancan.rbi
#
# cancan-1.6.10

module CanCan
end
module CanCan::Ability
  def alias_action(*args); end
  def aliased_actions; end
  def aliases_for_action(action); end
  def attributes_for(action, subject); end
  def authorize!(action, subject, *args); end
  def can(action = nil, subject = nil, conditions = nil, &block); end
  def can?(action, subject, *extra_args); end
  def cannot(action = nil, subject = nil, conditions = nil, &block); end
  def cannot?(*args); end
  def clear_aliased_actions; end
  def default_alias_actions; end
  def expand_actions(actions); end
  def has_block?(action, subject); end
  def has_raw_sql?(action, subject); end
  def merge(ability); end
  def model_adapter(model_class, action); end
  def relevant_rules(action, subject); end
  def relevant_rules_for_match(action, subject); end
  def relevant_rules_for_query(action, subject); end
  def rules; end
  def unauthorized_message(action, subject); end
  def unauthorized_message_keys(action, subject); end
  def validate_target(target); end
end
class CanCan::Rule
  def actions; end
  def associations_hash(conditions = nil); end
  def attributes_from_conditions; end
  def base_behavior; end
  def call_block_with_all(action, subject, extra_args); end
  def conditions; end
  def conditions_empty?; end
  def expanded_actions=(arg0); end
  def initialize(base_behavior, action, subject, conditions, block); end
  def matches_action?(action); end
  def matches_conditions?(action, subject, extra_args); end
  def matches_conditions_hash?(subject, conditions = nil); end
  def matches_subject?(subject); end
  def matches_subject_class?(subject); end
  def model_adapter(subject); end
  def nested_subject_matches_conditions?(subject_hash); end
  def only_block?; end
  def only_raw_sql?; end
  def relevant?(action, subject); end
  def subject_class?(subject); end
  def subjects; end
  def unmergeable?; end
end
class CanCan::ControllerResource
  def adapter; end
  def assign_attributes(resource); end
  def authorization_action; end
  def authorize_resource; end
  def build_resource; end
  def collection_actions; end
  def collection_instance; end
  def collection_instance=(instance); end
  def current_ability; end
  def extract_key(value); end
  def fetch_parent(name); end
  def find_resource; end
  def id_param; end
  def initial_attributes; end
  def initialize(controller, *args); end
  def instance_name; end
  def load_and_authorize_resource; end
  def load_collection; end
  def load_collection?; end
  def load_instance?; end
  def load_resource; end
  def load_resource_instance; end
  def member_action?; end
  def name; end
  def name_from_controller; end
  def namespace; end
  def namespaced_name; end
  def new_actions; end
  def parent?; end
  def parent_name; end
  def parent_resource; end
  def resource_base; end
  def resource_class; end
  def resource_class_with_parent; end
  def resource_instance; end
  def resource_instance=(instance); end
  def resource_params; end
  def resource_params_by_namespaced_name; end
  def self.add_before_filter(controller_class, method, *args); end
  def skip?(behavior); end
end
module CanCan::ControllerAdditions
  def authorize!(*args); end
  def can?(*args); end
  def cannot?(*args); end
  def current_ability; end
  def self.included(base); end
  def unauthorized!(message = nil); end
end
module CanCan::ControllerAdditions::ClassMethods
  def authorize_resource(*args); end
  def cancan_resource_class; end
  def cancan_skipper; end
  def check_authorization(options = nil); end
  def load_and_authorize_resource(*args); end
  def load_resource(*args); end
  def skip_authorization(*args); end
  def skip_authorization_check(*args); end
  def skip_authorize_resource(*args); end
  def skip_load_and_authorize_resource(*args); end
  def skip_load_resource(*args); end
end
class ActionController::Base < ActionController::Metal
  extend CanCan::ControllerAdditions::ClassMethods
  include CanCan::ControllerAdditions
end
module CanCan::ModelAdditions
  def self.included(base); end
end
module CanCan::ModelAdditions::ClassMethods
  def accessible_by(ability, action = nil); end
end
class CanCan::Error < StandardError
end
class CanCan::NotImplemented < CanCan::Error
end
class CanCan::ImplementationRemoved < CanCan::Error
end
class CanCan::AuthorizationNotPerformed < CanCan::Error
end
class CanCan::AccessDenied < CanCan::Error
  def action; end
  def default_message=(arg0); end
  def initialize(message = nil, action = nil, subject = nil); end
  def subject; end
  def to_s; end
end
class CanCan::InheritedResource < CanCan::ControllerResource
  def load_resource_instance; end
  def resource_base; end
end
module CanCan::ModelAdapters
end
class CanCan::ModelAdapters::AbstractAdapter
  def database_records; end
  def initialize(model_class, rules); end
  def self.adapter_class(model_class); end
  def self.find(model_class, id); end
  def self.for_class?(member_class); end
  def self.inherited(subclass); end
  def self.matches_condition?(subject, name, value); end
  def self.matches_conditions_hash?(subject, conditions); end
  def self.override_condition_matching?(subject, name, value); end
  def self.override_conditions_hash_matching?(subject, conditions); end
end
class CanCan::ModelAdapters::DefaultAdapter < CanCan::ModelAdapters::AbstractAdapter
end
class CanCan::ModelAdapters::ActiveRecordAdapter < CanCan::ModelAdapters::AbstractAdapter
  def clean_joins(joins_hash); end
  def conditions; end
  def database_records; end
  def false_sql; end
  def joins; end
  def merge_conditions(sql, conditions_hash, behavior); end
  def merge_joins(base, add); end
  def override_scope; end
  def sanitize_sql(conditions); end
  def self.for_class?(model_class); end
  def self.matches_condition?(subject, name, value); end
  def self.meta_where_match?(subject_value, method, value); end
  def self.override_condition_matching?(subject, name, value); end
  def tableized_conditions(conditions, model_class = nil); end
  def true_sql; end
end
class ActiveRecord::Base
  extend CanCan::ModelAdditions::ClassMethods
  include CanCan::ModelAdditions
end