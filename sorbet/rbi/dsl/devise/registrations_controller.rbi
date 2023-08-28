# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Devise::RegistrationsController`.
# Please instead update this file by running `bin/tapioca dsl Devise::RegistrationsController`.

class Devise::RegistrationsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::ActionView::Helpers::AssetUrlHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::ActionView::Helpers::UrlHelper
    include ::ActionView::Helpers::AssetTagHelper
    include ::ActionView::Helpers::SanitizeHelper
    include ::ActionView::Helpers::TextHelper
    include ::Kernel
    include ::ApplicationHelper
    include ::Admin::ApplicationHelper
    include ::AlertMailerHelper
    include ::ActionView::Helpers::DateHelper
    include ::AlertsHelper
    include ::ApplicationsHelper
    include ::ActionDispatch::Routing::PolymorphicRoutes
    include ::ActionDispatch::Routing::UrlFor
    include ::GeneratedUrlHelpersModule
    include ::GeneratedPathHelpersModule
    include ::ApiHowtoHelper
    include ::AtdisHelper
    include ::AuthoritiesHelper
    include ::CommentsHelper
    include ::SignupHelper
    include ::StaticHelper
    include ::PreviewHelper
    include ::DeviseHelper
    include ::Pundit::Helper
    include ::ApplicationController::HelperMethods

    sig { returns(T.untyped) }
    def devise_mapping; end

    sig { returns(T.untyped) }
    def resource; end

    sig { returns(T.untyped) }
    def resource_class; end

    sig { returns(T.untyped) }
    def resource_name; end

    sig { returns(T.untyped) }
    def resource_params; end

    sig { returns(T.untyped) }
    def scope_name; end

    sig { returns(T.untyped) }
    def signed_in_resource; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
