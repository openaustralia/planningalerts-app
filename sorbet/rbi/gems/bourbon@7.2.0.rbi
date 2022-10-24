# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bourbon` gem.
# Please instead update this file by running `bin/tapioca gem bourbon`.

# source://bourbon//lib/bourbon/version.rb#1
module Bourbon; end

# source://bourbon//lib/bourbon.rb#5
class Bourbon::Engine < ::Rails::Engine; end

# source://bourbon//lib/bourbon/generator.rb#7
class Bourbon::Generator < ::Thor
  # source://bourbon//lib/bourbon/generator.rb#12
  def install; end

  # source://bourbon//lib/bourbon/generator.rb#23
  def update; end

  # source://bourbon//lib/bourbon/generator.rb#34
  def version; end

  private

  # source://bourbon//lib/bourbon/generator.rb#69
  def all_stylesheets; end

  # @return [Boolean]
  #
  # source://bourbon//lib/bourbon/generator.rb#40
  def bourbon_files_already_exist?; end

  # source://bourbon//lib/bourbon/generator.rb#65
  def copy_in_scss_files; end

  # source://bourbon//lib/bourbon/generator.rb#52
  def install_files; end

  # source://bourbon//lib/bourbon/generator.rb#44
  def install_path; end

  # source://bourbon//lib/bourbon/generator.rb#61
  def make_install_directory; end

  # source://bourbon//lib/bourbon/generator.rb#57
  def remove_bourbon_directory; end

  # source://bourbon//lib/bourbon/generator.rb#73
  def stylesheets_directory; end

  # source://bourbon//lib/bourbon/generator.rb#77
  def top_level_directory; end
end

# source://bourbon//lib/bourbon/version.rb#2
Bourbon::VERSION = T.let(T.unsafe(nil), String)
