# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `climate_control` gem.
# Please instead update this file by running `bin/tapioca gem climate_control`.

# source://climate_control//lib/climate_control/errors.rb#1
module ClimateControl
  extend ::ClimateControl
  extend ::Gem::Deprecate

  # source://climate_control//lib/climate_control.rb#56
  def _deprecated_env; end

  def env(*args, &block); end

  # source://climate_control//lib/climate_control.rb#12
  def modify(environment_overrides = T.unsafe(nil), &block); end

  # source://climate_control//lib/climate_control.rb#35
  def unsafe_modify(environment_overrides = T.unsafe(nil), &block); end

  private

  # source://climate_control//lib/climate_control.rb#64
  def copy(overrides); end
end

# source://climate_control//lib/climate_control.rb#9
ClimateControl::SEMAPHORE = T.let(T.unsafe(nil), Monitor)

# source://climate_control//lib/climate_control/errors.rb#2
class ClimateControl::UnassignableValueError < ::ArgumentError; end

# source://climate_control//lib/climate_control/version.rb#2
ClimateControl::VERSION = T.let(T.unsafe(nil), String)
