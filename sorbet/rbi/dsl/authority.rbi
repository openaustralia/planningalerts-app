# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Authority`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class Authority
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend GeneratedRelationMethods

  module GeneratedAssociationMethods
    sig { returns(T::Array[T.untyped]) }
    def application_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def application_ids=(ids); end

    sig { returns(::ActiveRecord::Associations::CollectionProxy[Application]) }
    def applications; end

    sig { params(value: T::Enumerable[::Application]).void }
    def applications=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GithubIssue) }
    def build_github_issue(*args, &blk); end

    sig { returns(T::Array[T.untyped]) }
    def comment_ids; end

    sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def comment_ids=(ids); end

    sig { returns(::ActiveRecord::Associations::CollectionProxy[Comment]) }
    def comments; end

    sig { params(value: T::Enumerable[::Comment]).void }
    def comments=(value); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GithubIssue) }
    def create_github_issue(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::GithubIssue) }
    def create_github_issue!(*args, &blk); end

    sig { returns(T.nilable(::GithubIssue)) }
    def github_issue; end

    sig { params(value: T.nilable(::GithubIssue)).void }
    def github_issue=(value); end

    sig { returns(T.nilable(::GithubIssue)) }
    def reload_github_issue; end
  end

  module GeneratedAttributeMethods
    sig { returns(T::Boolean) }
    def disabled; end

    sig { params(value: T::Boolean).returns(T::Boolean) }
    def disabled=(value); end

    sig { returns(T::Boolean) }
    def disabled?; end

    sig { returns(T.nilable(T::Boolean)) }
    def disabled_before_last_save; end

    sig { returns(T.untyped) }
    def disabled_before_type_cast; end

    sig { returns(T::Boolean) }
    def disabled_came_from_user?; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def disabled_change; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def disabled_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def disabled_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def disabled_in_database; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def disabled_previous_change; end

    sig { returns(T::Boolean) }
    def disabled_previously_changed?; end

    sig { returns(T.nilable(T::Boolean)) }
    def disabled_previously_was; end

    sig { returns(T.nilable(T::Boolean)) }
    def disabled_was; end

    sig { void }
    def disabled_will_change!; end

    sig { returns(T.nilable(::String)) }
    def email; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def email=(value); end

    sig { returns(T::Boolean) }
    def email?; end

    sig { returns(T.nilable(::String)) }
    def email_before_last_save; end

    sig { returns(T.untyped) }
    def email_before_type_cast; end

    sig { returns(T::Boolean) }
    def email_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def email_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def email_previous_change; end

    sig { returns(T::Boolean) }
    def email_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def email_previously_was; end

    sig { returns(T.nilable(::String)) }
    def email_was; end

    sig { void }
    def email_will_change!; end

    sig { returns(::String) }
    def full_name; end

    sig { params(value: ::String).returns(::String) }
    def full_name=(value); end

    sig { returns(T::Boolean) }
    def full_name?; end

    sig { returns(T.nilable(::String)) }
    def full_name_before_last_save; end

    sig { returns(T.untyped) }
    def full_name_before_type_cast; end

    sig { returns(T::Boolean) }
    def full_name_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def full_name_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def full_name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def full_name_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_name_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def full_name_previous_change; end

    sig { returns(T::Boolean) }
    def full_name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def full_name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def full_name_was; end

    sig { void }
    def full_name_will_change!; end

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

    sig { returns(T.nilable(::String)) }
    def last_scraper_run_log; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def last_scraper_run_log=(value); end

    sig { returns(T::Boolean) }
    def last_scraper_run_log?; end

    sig { returns(T.nilable(::String)) }
    def last_scraper_run_log_before_last_save; end

    sig { returns(T.untyped) }
    def last_scraper_run_log_before_type_cast; end

    sig { returns(T::Boolean) }
    def last_scraper_run_log_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def last_scraper_run_log_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def last_scraper_run_log_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def last_scraper_run_log_changed?; end

    sig { returns(T.nilable(::String)) }
    def last_scraper_run_log_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def last_scraper_run_log_previous_change; end

    sig { returns(T::Boolean) }
    def last_scraper_run_log_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def last_scraper_run_log_previously_was; end

    sig { returns(T.nilable(::String)) }
    def last_scraper_run_log_was; end

    sig { void }
    def last_scraper_run_log_will_change!; end

    sig { returns(T.nilable(::String)) }
    def morph_name; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def morph_name=(value); end

    sig { returns(T::Boolean) }
    def morph_name?; end

    sig { returns(T.nilable(::String)) }
    def morph_name_before_last_save; end

    sig { returns(T.untyped) }
    def morph_name_before_type_cast; end

    sig { returns(T::Boolean) }
    def morph_name_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def morph_name_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def morph_name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def morph_name_changed?; end

    sig { returns(T.nilable(::String)) }
    def morph_name_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def morph_name_previous_change; end

    sig { returns(T::Boolean) }
    def morph_name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def morph_name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def morph_name_was; end

    sig { void }
    def morph_name_will_change!; end

    sig { returns(T.nilable(::Integer)) }
    def population_2017; end

    sig { params(value: T.nilable(::Integer)).returns(T.nilable(::Integer)) }
    def population_2017=(value); end

    sig { returns(T::Boolean) }
    def population_2017?; end

    sig { returns(T.nilable(::Integer)) }
    def population_2017_before_last_save; end

    sig { returns(T.untyped) }
    def population_2017_before_type_cast; end

    sig { returns(T::Boolean) }
    def population_2017_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def population_2017_change; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def population_2017_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def population_2017_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def population_2017_in_database; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def population_2017_previous_change; end

    sig { returns(T::Boolean) }
    def population_2017_previously_changed?; end

    sig { returns(T.nilable(::Integer)) }
    def population_2017_previously_was; end

    sig { returns(T.nilable(::Integer)) }
    def population_2017_was; end

    sig { void }
    def population_2017_will_change!; end

    sig { void }
    def restore_disabled!; end

    sig { void }
    def restore_email!; end

    sig { void }
    def restore_full_name!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_last_scraper_run_log!; end

    sig { void }
    def restore_morph_name!; end

    sig { void }
    def restore_population_2017!; end

    sig { void }
    def restore_scraper_authority_label!; end

    sig { void }
    def restore_short_name!; end

    sig { void }
    def restore_state!; end

    sig { void }
    def restore_website_url!; end

    sig { returns(T.nilable([T::Boolean, T::Boolean])) }
    def saved_change_to_disabled; end

    sig { returns(T::Boolean) }
    def saved_change_to_disabled?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_email; end

    sig { returns(T::Boolean) }
    def saved_change_to_email?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_full_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_full_name?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_last_scraper_run_log; end

    sig { returns(T::Boolean) }
    def saved_change_to_last_scraper_run_log?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_morph_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_morph_name?; end

    sig { returns(T.nilable([T.nilable(::Integer), T.nilable(::Integer)])) }
    def saved_change_to_population_2017; end

    sig { returns(T::Boolean) }
    def saved_change_to_population_2017?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_scraper_authority_label; end

    sig { returns(T::Boolean) }
    def saved_change_to_scraper_authority_label?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_short_name; end

    sig { returns(T::Boolean) }
    def saved_change_to_short_name?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_state; end

    sig { returns(T::Boolean) }
    def saved_change_to_state?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_website_url; end

    sig { returns(T::Boolean) }
    def saved_change_to_website_url?; end

    sig { returns(T.nilable(::String)) }
    def scraper_authority_label; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def scraper_authority_label=(value); end

    sig { returns(T::Boolean) }
    def scraper_authority_label?; end

    sig { returns(T.nilable(::String)) }
    def scraper_authority_label_before_last_save; end

    sig { returns(T.untyped) }
    def scraper_authority_label_before_type_cast; end

    sig { returns(T::Boolean) }
    def scraper_authority_label_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def scraper_authority_label_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def scraper_authority_label_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def scraper_authority_label_changed?; end

    sig { returns(T.nilable(::String)) }
    def scraper_authority_label_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def scraper_authority_label_previous_change; end

    sig { returns(T::Boolean) }
    def scraper_authority_label_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def scraper_authority_label_previously_was; end

    sig { returns(T.nilable(::String)) }
    def scraper_authority_label_was; end

    sig { void }
    def scraper_authority_label_will_change!; end

    sig { returns(::String) }
    def short_name; end

    sig { params(value: ::String).returns(::String) }
    def short_name=(value); end

    sig { returns(T::Boolean) }
    def short_name?; end

    sig { returns(T.nilable(::String)) }
    def short_name_before_last_save; end

    sig { returns(T.untyped) }
    def short_name_before_type_cast; end

    sig { returns(T::Boolean) }
    def short_name_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def short_name_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def short_name_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def short_name_changed?; end

    sig { returns(T.nilable(::String)) }
    def short_name_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def short_name_previous_change; end

    sig { returns(T::Boolean) }
    def short_name_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def short_name_previously_was; end

    sig { returns(T.nilable(::String)) }
    def short_name_was; end

    sig { void }
    def short_name_will_change!; end

    sig { returns(::String) }
    def state; end

    sig { params(value: ::String).returns(::String) }
    def state=(value); end

    sig { returns(T::Boolean) }
    def state?; end

    sig { returns(T.nilable(::String)) }
    def state_before_last_save; end

    sig { returns(T.untyped) }
    def state_before_type_cast; end

    sig { returns(T::Boolean) }
    def state_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def state_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def state_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def state_changed?; end

    sig { returns(T.nilable(::String)) }
    def state_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
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
    def website_url; end

    sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
    def website_url=(value); end

    sig { returns(T::Boolean) }
    def website_url?; end

    sig { returns(T.nilable(::String)) }
    def website_url_before_last_save; end

    sig { returns(T.untyped) }
    def website_url_before_type_cast; end

    sig { returns(T::Boolean) }
    def website_url_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def website_url_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def website_url_change_to_be_saved; end

    sig { returns(T::Boolean) }
    def website_url_changed?; end

    sig { returns(T.nilable(::String)) }
    def website_url_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def website_url_previous_change; end

    sig { returns(T::Boolean) }
    def website_url_previously_changed?; end

    sig { returns(T.nilable(::String)) }
    def website_url_previously_was; end

    sig { returns(T.nilable(::String)) }
    def website_url_was; end

    sig { void }
    def website_url_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_disabled?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_email?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_full_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_last_scraper_run_log?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_morph_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_population_2017?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_scraper_authority_label?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_short_name?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_state?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_website_url?; end
  end

  module GeneratedRelationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def active(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
    def enabled(*args, &blk); end
  end
end