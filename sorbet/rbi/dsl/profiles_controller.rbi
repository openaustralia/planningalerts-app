# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ProfilesController`.
# Please instead update this file by running `bin/tapioca dsl ProfilesController`.

class ProfilesController
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
    include ::ActionView::Helpers::DateHelper
    include ::ActionView::Helpers::AssetTagHelper
    include ::ActionView::Helpers::SanitizeHelper
    include ::ActionView::Helpers::TextHelper
    include ::Kernel
    include ::ApplicationHelper
    include ::Admin::ApplicationHelper
    include ::AlertMailerHelper
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
