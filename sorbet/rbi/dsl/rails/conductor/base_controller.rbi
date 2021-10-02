# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::BaseController`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
module Rails
  module Conductor
    class BaseController
      include GeneratedPathHelpersModule
      include GeneratedUrlHelpersModule

      module HelperMethods
        include ::ActionController::Base::HelperMethods
        include ::ActionText::ContentHelper
        include ::ActionText::TagHelper
        include ::Admin::ApplicationHelper
        include ::AlertMailerHelper
        include ::ApiHowtoHelper
        include ::ApplicationHelper
        include ::ApplicationsHelper
        include ::AtdisHelper
        include ::AuthoritiesHelper
        include ::CommentsHelper
        include ::DeviseHelper
        include ::SignupHelper
        include ::StaticHelper
      end

      class HelperProxy < ::ActionView::Base
        include HelperMethods
      end

      sig { returns(HelperProxy) }
      def helpers; end
    end
  end
end