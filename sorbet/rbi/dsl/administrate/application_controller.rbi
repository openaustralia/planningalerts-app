# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Administrate::ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl Administrate::ApplicationController`.

class Administrate::ApplicationController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::Administrate::ApplicationHelper

    sig { params(_resource: T.untyped, _action_name: T.untyped).returns(T.untyped) }
    def authorized_action?(_resource, _action_name); end

    sig { params(resource: T.untyped, action_name: T.untyped).returns(T.untyped) }
    def existing_action?(resource, action_name); end

    sig { params(_arg0: T.untyped, _arg1: T.untyped).returns(T.untyped) }
    def namespace(*_arg0, &_arg1); end

    sig { params(resource: T.untyped).returns(T.untyped) }
    def nav_link_state(resource); end

    sig { returns(T.untyped) }
    def new_resource; end

    sig { params(_arg0: T.untyped, _arg1: T.untyped).returns(T.untyped) }
    def resource_class(*_arg0, &_arg1); end

    sig { params(_arg0: T.untyped, _arg1: T.untyped).returns(T.untyped) }
    def resource_name(*_arg0, &_arg1); end

    sig { params(action: T.untyped, resource: T.untyped).returns(T.untyped) }
    def show_action?(action, resource); end

    sig { params(action_name: T.untyped, resource: T.untyped).returns(T.untyped) }
    def valid_action?(action_name, resource = T.unsafe(nil)); end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
