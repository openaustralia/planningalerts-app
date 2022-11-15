# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `flipper-ui` gem.
# Please instead update this file by running `bin/tapioca gem flipper-ui`.

# source://flipper-ui//lib/flipper/ui/action_collection.rb#1
module Flipper
  # source://forwardable/1.3.1/forwardable.rb#226
  def [](*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def actor(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def actors(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def adapter(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def add(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def bool(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def boolean(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#28
  def configuration; end

  # source://flipper/0.25.4/lib/flipper.rb#33
  def configuration=(configuration); end

  # source://flipper/0.25.4/lib/flipper.rb#23
  def configure; end

  # source://forwardable/1.3.1/forwardable.rb#226
  def disable(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def disable_actor(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def disable_group(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def disable_percentage_of_actors(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def disable_percentage_of_time(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enable(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enable_actor(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enable_group(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enable_percentage_of_actors(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enable_percentage_of_time(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def enabled?(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def exist?(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def feature(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def features(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#128
  def group(name); end

  # source://flipper/0.25.4/lib/flipper.rb#115
  def group_exists?(name); end

  # source://flipper/0.25.4/lib/flipper.rb#101
  def group_names; end

  # source://flipper/0.25.4/lib/flipper.rb#94
  def groups; end

  # source://flipper/0.25.4/lib/flipper.rb#133
  def groups_registry; end

  # source://flipper/0.25.4/lib/flipper.rb#138
  def groups_registry=(registry); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def import(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#45
  def instance; end

  # source://flipper/0.25.4/lib/flipper.rb#52
  def instance=(flipper); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def memoize=(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def memoizing?(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#12
  def new(adapter, options = T.unsafe(nil)); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def percentage_of_actors(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def percentage_of_time(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def preload(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def preload_all(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#85
  def register(name, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def remove(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def sync(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def sync_secret(*args, &block); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def time(*args, &block); end

  # source://flipper/0.25.4/lib/flipper.rb#108
  def unregister_groups; end
end

# source://flipper/0.25.4/lib/flipper.rb#8
Flipper::InstrumentationNamespace = T.let(T.unsafe(nil), Symbol)

# source://flipper-ui//lib/flipper/ui/action_collection.rb#2
module Flipper::UI
  class << self
    # @yield [builder]
    #
    # source://flipper-ui//lib/flipper/ui.rb#21
    def app(flipper = T.unsafe(nil), options = T.unsafe(nil)); end

    # source://flipper-ui//lib/flipper/ui.rb#44
    def configuration; end

    # Public: yields configuration instance for customizing UI text
    #
    # @yield [configuration]
    #
    # source://flipper-ui//lib/flipper/ui.rb#40
    def configure; end

    # source://flipper-ui//lib/flipper/ui.rb#17
    def root; end
  end
end

# source://flipper-ui//lib/flipper/ui/action.rb#10
class Flipper::UI::Action
  extend ::Forwardable

  # @return [Action] a new instance of Action
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#109
  def initialize(flipper, request); end

  # source://flipper-ui//lib/flipper/ui/action.rb#286
  def bootstrap_css; end

  # source://flipper-ui//lib/flipper/ui/action.rb#290
  def bootstrap_js; end

  # Public: Add a breadcrumb to the trail.
  #
  # text - The String text for the breadcrumb.
  # href - The String href for the anchor tag (optional). If nil, breadcrumb
  #        is assumed to be the end of the trail.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#223
  def breadcrumb(text, href = T.unsafe(nil)); end

  # source://flipper-ui//lib/flipper/ui/action.rb#266
  def csrf_input_tag; end

  # Public: The instance of the Flipper::DSL the middleware was
  # initialized with.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#101
  def flipper; end

  # Public: Call this with a response to immediately stop the current action
  # and respond however you want.
  #
  # response - The response you would like to return.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#153
  def halt(response); end

  # Public: Set a header.
  #
  # name - The String name of the header.
  # value - The value of the header.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#201
  def header(name, value); end

  # source://flipper-ui//lib/flipper/ui/action.rb#298
  def jquery_js; end

  # Public: Dumps an object as json and returns rack response with that as
  # the body. Automatically sets Content-Type to "application/json".
  #
  # object - The Object that should be dumped as json.
  #
  # Returns a response.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#175
  def json_response(object); end

  # source://forwardable/1.3.1/forwardable.rb#226
  def params(*args, &block); end

  # source://flipper-ui//lib/flipper/ui/action.rb#294
  def popper_js; end

  # Private
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#257
  def public_path; end

  # Internal: Method to call when the UI is in read only mode and you want
  # to inform people of that fact.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#276
  def read_only; end

  # Public: Redirect to a new location.
  #
  # location - The String location to set the Location header to.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#184
  def redirect_to(location); end

  # Public: The Rack::Request to provide a response for.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#104
  def request; end

  # Private: Returns the request method converted to an action method.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#262
  def request_method_name; end

  # Public: Runs the request method for the provided request.
  #
  # Returns whatever the request method returns in the action.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#125
  def run; end

  # Public: Runs another action from within the request method of a
  # different action.
  #
  # action_class - The class of the other action to run.
  #
  # Examples
  #
  #   run_other_action Home
  #   # => result of running Home action
  #
  # Returns result of other action.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#145
  def run_other_action(action_class); end

  # Internal: The path the app is mounted at.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#247
  def script_name; end

  # Public: Set the status code for the response.
  #
  # code - The Integer code you would like the response to return.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#193
  def status(code); end

  # @return [Boolean]
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#270
  def valid_request_method?; end

  # Private
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#239
  def view(name); end

  # Public: Compiles a view and returns rack response with that as the body.
  #
  # name - The Symbol name of the view.
  #
  # Returns a response.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#162
  def view_response(name); end

  # Private
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#229
  def view_with_layout(&block); end

  # Private
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#234
  def view_without_layout(name); end

  # Private
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#252
  def views_path; end

  class << self
    # Private: The path to the public folder.
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#95
    def public_path; end

    # Public: Call this in subclasses so the action knows its route.
    #
    # regex - The Regexp that this action should run for.
    #
    # Returns nothing.
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#65
    def route(regex); end

    # Internal: Does this action's route match the path.
    #
    # @return [Boolean]
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#70
    def route_match?(path); end

    # Internal: The regex that matches which routes this action will work for.
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#75
    def route_regex; end

    # Internal: Initializes and runs an action for a given request.
    #
    # flipper - The Flipper::DSL instance.
    # request - The Rack::Request that was sent.
    #
    # Returns result of Action#run.
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#85
    def run(flipper, request); end

    # Private: The path to the views folder.
    #
    # source://flipper-ui//lib/flipper/ui/action.rb#90
    def views_path; end
  end
end

# source://flipper-ui//lib/flipper/ui/action.rb#205
class Flipper::UI::Action::Breadcrumb
  # @return [Breadcrumb] a new instance of Breadcrumb
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#208
  def initialize(text, href = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#213
  def active?; end

  # Returns the value of attribute href.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#206
  def href; end

  # Returns the value of attribute text.
  #
  # source://flipper-ui//lib/flipper/ui/action.rb#206
  def text; end
end

# source://flipper-ui//lib/flipper/ui/action.rb#50
Flipper::UI::Action::CONTENT_SECURITY_POLICY = T.let(T.unsafe(nil), String)

# source://flipper-ui//lib/flipper/ui/action.rb#11
module Flipper::UI::Action::FeatureNameFromRoute
  private

  # source://flipper-ui//lib/flipper/ui/action.rb#12
  def feature_name; end
end

# source://flipper-ui//lib/flipper/ui/action.rb#48
Flipper::UI::Action::SCRIPT_SRCS = T.let(T.unsafe(nil), Array)

# source://flipper-ui//lib/flipper/ui/action.rb#30
Flipper::UI::Action::SOURCES = T.let(T.unsafe(nil), Hash)

# source://flipper-ui//lib/flipper/ui/action.rb#49
Flipper::UI::Action::STYLE_SRCS = T.let(T.unsafe(nil), Array)

# source://flipper-ui//lib/flipper/ui/action.rb#23
Flipper::UI::Action::VALID_REQUEST_METHOD_NAMES = T.let(T.unsafe(nil), Set)

# Internal: Used to detect the action that should be used in the middleware.
#
# source://flipper-ui//lib/flipper/ui/action_collection.rb#4
class Flipper::UI::ActionCollection
  # @return [ActionCollection] a new instance of ActionCollection
  #
  # source://flipper-ui//lib/flipper/ui/action_collection.rb#5
  def initialize; end

  # source://flipper-ui//lib/flipper/ui/action_collection.rb#13
  def action_for_request(request); end

  # source://flipper-ui//lib/flipper/ui/action_collection.rb#9
  def add(action_class); end
end

# source://flipper-ui//lib/flipper/ui/actions/groups_gate.rb#6
module Flipper::UI::Actions; end

# source://flipper-ui//lib/flipper/ui/actions/actors_gate.rb#8
class Flipper::UI::Actions::ActorsGate < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/actors_gate.rb#13
  def get; end

  # source://flipper-ui//lib/flipper/ui/actions/actors_gate.rb#25
  def post; end
end

# source://flipper-ui//lib/flipper/ui/actions/add_feature.rb#7
class Flipper::UI::Actions::AddFeature < ::Flipper::UI::Action
  # source://flipper-ui//lib/flipper/ui/actions/add_feature.rb#10
  def get; end
end

# source://flipper-ui//lib/flipper/ui/actions/boolean_gate.rb#7
class Flipper::UI::Actions::BooleanGate < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/boolean_gate.rb#12
  def post; end
end

# source://flipper-ui//lib/flipper/ui/actions/feature.rb#7
class Flipper::UI::Actions::Feature < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/feature.rb#27
  def delete; end

  # source://flipper-ui//lib/flipper/ui/actions/feature.rb#12
  def get; end
end

# source://flipper-ui//lib/flipper/ui/actions/features.rb#8
class Flipper::UI::Actions::Features < ::Flipper::UI::Action
  # source://flipper-ui//lib/flipper/ui/actions/features.rb#11
  def get; end

  # source://flipper-ui//lib/flipper/ui/actions/features.rb#38
  def post; end
end

# source://flipper-ui//lib/flipper/ui/actions/file.rb#7
class Flipper::UI::Actions::File < ::Flipper::UI::Action
  # source://flipper-ui//lib/flipper/ui/actions/file.rb#10
  def get; end
end

# source://flipper-ui//lib/flipper/ui/actions/groups_gate.rb#7
class Flipper::UI::Actions::GroupsGate < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/groups_gate.rb#12
  def get; end

  # source://flipper-ui//lib/flipper/ui/actions/groups_gate.rb#24
  def post; end
end

# source://flipper-ui//lib/flipper/ui/actions/home.rb#7
class Flipper::UI::Actions::Home < ::Flipper::UI::Action
  # source://flipper-ui//lib/flipper/ui/actions/home.rb#10
  def get; end
end

# source://flipper-ui//lib/flipper/ui/actions/percentage_of_actors_gate.rb#7
class Flipper::UI::Actions::PercentageOfActorsGate < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/percentage_of_actors_gate.rb#12
  def post; end
end

# source://flipper-ui//lib/flipper/ui/actions/percentage_of_time_gate.rb#7
class Flipper::UI::Actions::PercentageOfTimeGate < ::Flipper::UI::Action
  include ::Flipper::UI::Action::FeatureNameFromRoute

  # source://flipper-ui//lib/flipper/ui/actions/percentage_of_time_gate.rb#12
  def post; end
end

# source://flipper-ui//lib/flipper/ui/configuration.rb#5
class Flipper::UI::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#74
  def initialize; end

  # Public: What should be used to denote you are trying to add multiple
  # actors at once (instead of just a single actor).
  # Default is comma ",".
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#55
  def actors_separator; end

  # Public: What should be used to denote you are trying to add multiple
  # actors at once (instead of just a single actor).
  # Default is comma ",".
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#55
  def actors_separator=(_arg0); end

  # Public: What should show up in the form to add actors. This can be
  # different per application since flipper_id's can be whatever an
  # application needs. Defaults to "a flipper id".
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#41
  def add_actor_placeholder; end

  # Public: What should show up in the form to add actors. This can be
  # different per application since flipper_id's can be whatever an
  # application needs. Defaults to "a flipper id".
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#41
  def add_actor_placeholder=(_arg0); end

  # Public: If you set this, the UI will always have a first breadcrumb that
  # says "App" which points to this href. The href can be a path (ie: "/")
  # or full url ("https://app.example.com/").
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#19
  def application_breadcrumb_href; end

  # Public: If you set this, the UI will always have a first breadcrumb that
  # says "App" which points to this href. The href can be a path (ie: "/")
  # or full url ("https://app.example.com/").
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#19
  def application_breadcrumb_href=(_arg0); end

  # Returns the value of attribute banner_class.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#8
  def banner_class; end

  # Sets the attribute banner_class
  #
  # @param value the value to set the attribute banner_class to.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#98
  def banner_class=(value); end

  # Returns the value of attribute banner_text.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#8
  def banner_text; end

  # Sets the attribute banner_text
  #
  # @param value the value to set the attribute banner_text to.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#8
  def banner_text=(_arg0); end

  # Public: Tired of seeing the awesome message about Cloud? Set this to
  # false and it will go away. Defaults to true.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#36
  def cloud_recommendation; end

  # Public: Tired of seeing the awesome message about Cloud? Set this to
  # false and it will go away. Defaults to true.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#36
  def cloud_recommendation=(_arg0); end

  # Public: if you want to get a confirm pop up box while fully enabling a feature
  # Default is false.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#59
  def confirm_fully_enable; end

  # Public: if you want to get a confirm pop up box while fully enabling a feature
  # Default is false.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#59
  def confirm_fully_enable=(_arg0); end

  # Returns the value of attribute delete.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#6
  def delete; end

  # Public: If you set this, Flipper::UI will fetch descriptions
  # from your external source. Descriptions for `features` will be shown on `feature`
  # page, and optionally the `features` pages. Defaults to empty block.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#46
  def descriptions_source; end

  # Public: If you set this, Flipper::UI will fetch descriptions
  # from your external source. Descriptions for `features` will be shown on `feature`
  # page, and optionally the `features` pages. Defaults to empty block.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#46
  def descriptions_source=(_arg0); end

  # Public: Is feature creation allowed from the UI? Defaults to true. If
  # set to false, users of the UI cannot create features. All feature
  # creation will need to be done through the configured flipper instance.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#24
  def feature_creation_enabled; end

  # Public: Is feature creation allowed from the UI? Defaults to true. If
  # set to false, users of the UI cannot create features. All feature
  # creation will need to be done through the configured flipper instance.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#24
  def feature_creation_enabled=(_arg0); end

  # Public: Is feature deletion allowed from the UI? Defaults to true. If
  # set to false, users won't be able to delete features from the UI.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#28
  def feature_removal_enabled; end

  # Public: Is feature deletion allowed from the UI? Defaults to true. If
  # set to false, users won't be able to delete features from the UI.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#28
  def feature_removal_enabled=(_arg0); end

  # Public: Are you feeling lucky? Defaults to true. If set to false, users
  # won't see a videoclip of Taylor Swift when there aren't any features
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#32
  def fun; end

  # Public: Are you feeling lucky? Defaults to true. If set to false, users
  # won't see a videoclip of Taylor Swift when there aren't any features
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#32
  def fun=(_arg0); end

  # Public: Is the UI in read only mode or not. Default is false. This
  # supersedes all other write-related options such as
  # (feature_creation_enabled and feature_removal_enabled).
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#14
  def read_only; end

  # Public: Is the UI in read only mode or not. Default is false. This
  # supersedes all other write-related options such as
  # (feature_creation_enabled and feature_removal_enabled).
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#14
  def read_only=(_arg0); end

  # Public: Should feature descriptions be show on the `features` list page.
  # Default false. Only works when using descriptions.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#50
  def show_feature_description_in_list; end

  # Public: Should feature descriptions be show on the `features` list page.
  # Default false. Only works when using descriptions.
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#50
  def show_feature_description_in_list=(_arg0); end

  # @return [Boolean]
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#94
  def show_feature_description_in_list?; end

  # @return [Boolean]
  #
  # source://flipper-ui//lib/flipper/ui/configuration.rb#90
  def using_descriptions?; end
end

# source://flipper-ui//lib/flipper/ui/configuration.rb#72
Flipper::UI::Configuration::DEFAULT_DESCRIPTIONS_SOURCE = T.let(T.unsafe(nil), Proc)

# source://flipper-ui//lib/flipper/ui/configuration.rb#61
Flipper::UI::Configuration::VALID_BANNER_CLASS_VALUES = T.let(T.unsafe(nil), Array)

# source://flipper-ui//lib/flipper/ui/decorators/gate.rb#5
module Flipper::UI::Decorators; end

# source://flipper-ui//lib/flipper/ui/decorators/feature.rb#8
class Flipper::UI::Decorators::Feature < ::SimpleDelegator
  include ::Comparable

  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#79
  def <=>(other); end

  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#23
  def color_class; end

  # Internal: Used to preload description if descriptions_source is
  # configured for Flipper::UI.
  #
  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#16
  def description; end

  # Internal: Used to preload description if descriptions_source is
  # configured for Flipper::UI.
  #
  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#16
  def description=(_arg0); end

  # Public: The feature being decorated.
  #
  # source://delegate/0.1.0/delegate.rb#312
  def feature; end

  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#58
  def gate_state_title; end

  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#34
  def gates_in_words; end

  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#69
  def pretty_enabled_gate_names; end

  # Public: Returns name titleized.
  #
  # source://flipper-ui//lib/flipper/ui/decorators/feature.rb#19
  def pretty_name; end
end

# source://flipper-ui//lib/flipper/ui/decorators/feature.rb#73
Flipper::UI::Decorators::Feature::StateSortMap = T.let(T.unsafe(nil), Hash)

# source://flipper-ui//lib/flipper/ui/decorators/gate.rb#7
class Flipper::UI::Decorators::Gate < ::SimpleDelegator
  # @return [Gate] a new instance of Gate
  #
  # source://flipper-ui//lib/flipper/ui/decorators/gate.rb#13
  def initialize(gate, value = T.unsafe(nil)); end

  # Public: Returns instance as hash that is ready to be json dumped.
  #
  # source://flipper-ui//lib/flipper/ui/decorators/gate.rb#19
  def as_json; end

  # Public: The gate being decorated.
  #
  # source://delegate/0.1.0/delegate.rb#312
  def gate; end

  # Public: The value for the gate from the adapter.
  #
  # source://flipper-ui//lib/flipper/ui/decorators/gate.rb#11
  def value; end
end

# All flipper ui errors inherit from this.
#
# source://flipper-ui//lib/flipper/ui/error.rb#4
class Flipper::UI::Error < ::StandardError; end

# source://flipper-ui//lib/flipper/ui/middleware.rb#11
class Flipper::UI::Middleware
  # @return [Middleware] a new instance of Middleware
  #
  # source://flipper-ui//lib/flipper/ui/middleware.rb#12
  def initialize(app, options = T.unsafe(nil)); end

  # source://flipper-ui//lib/flipper/ui/middleware.rb#36
  def call(env); end

  # source://flipper-ui//lib/flipper/ui/middleware.rb#40
  def call!(env); end
end

# source://flipper-ui//lib/flipper/ui/configuration/option.rb#3
class Flipper::UI::Option
  # @return [Option] a new instance of Option
  #
  # source://flipper-ui//lib/flipper/ui/configuration/option.rb#6
  def initialize(title, description); end

  # Returns the value of attribute description.
  #
  # source://flipper-ui//lib/flipper/ui/configuration/option.rb#4
  def description; end

  # Sets the attribute description
  #
  # @param value the value to set the attribute description to.
  #
  # source://flipper-ui//lib/flipper/ui/configuration/option.rb#4
  def description=(_arg0); end

  # Returns the value of attribute title.
  #
  # source://flipper-ui//lib/flipper/ui/configuration/option.rb#4
  def title; end

  # Sets the attribute title
  #
  # @param value the value to set the attribute title to.
  #
  # source://flipper-ui//lib/flipper/ui/configuration/option.rb#4
  def title=(_arg0); end
end

# Raised when a request method (get, post, etc.) is called for an action
# that does not know how to handle it.
#
# source://flipper-ui//lib/flipper/ui/error.rb#8
class Flipper::UI::RequestMethodNotSupported < ::Flipper::UI::Error; end

# source://flipper-ui//lib/flipper/ui/util.rb#3
module Flipper::UI::Util
  class << self
    # @return [Boolean]
    #
    # source://flipper-ui//lib/flipper/ui/util.rb#7
    def blank?(str); end

    # source://flipper-ui//lib/flipper/ui/util.rb#27
    def pluralize(count, singular, plural); end

    # @return [Boolean]
    #
    # source://flipper-ui//lib/flipper/ui/util.rb#11
    def present?(str); end

    # source://flipper-ui//lib/flipper/ui/util.rb#15
    def titleize(str); end

    # source://flipper-ui//lib/flipper/ui/util.rb#35
    def to_sentence(array, options = T.unsafe(nil)); end

    # source://flipper-ui//lib/flipper/ui/util.rb#19
    def truncate(str, length: T.unsafe(nil)); end
  end
end

# Private: 0x3000: fullwidth whitespace
#
# source://flipper-ui//lib/flipper/ui/util.rb#5
Flipper::UI::Util::NON_WHITESPACE_REGEXP = T.let(T.unsafe(nil), Regexp)
