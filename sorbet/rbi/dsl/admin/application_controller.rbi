# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Admin::ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl Admin::ApplicationController`.


class Admin::ApplicationController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::Administrate::ApplicationHelper
    include ::Administrate::ApplicationController::HelperMethods
    include ::Admin::ApplicationHelper
    include ::Pundit::Helper

    sig { params(record: T.untyped).returns(T.untyped) }
    def policy(record); end

    sig { params(scope: T.untyped).returns(T.untyped) }
    def pundit_policy_scope(scope); end

    sig { returns(T.untyped) }
    def pundit_user; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
