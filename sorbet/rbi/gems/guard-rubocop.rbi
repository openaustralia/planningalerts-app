# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/guard-rubocop/all/guard-rubocop.rbi
#
# guard-rubocop-1.3.0

module Guard
end
class Guard::RuboCop < Guard::Plugin
  def clean_paths(paths); end
  def failed_paths; end
  def included_in_other_path?(target_path, other_paths); end
  def initialize(options = nil); end
  def inspect_with_rubocop(paths = nil); end
  def options; end
  def reload; end
  def run_all; end
  def run_on_additions(paths); end
  def run_on_modifications(paths); end
  def run_partially(paths); end
  def smart_path(path); end
  def start; end
end