# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl Rails::ApplicationController`.


class Rails::ApplicationController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::Admin::ApplicationHelper
    include ::ActionView::Helpers::AssetUrlHelper
    include ::ActionView::Helpers::ContentExfiltrationPreventionHelper
    include ::ActionView::Helpers::UrlHelper
    include ::ActionView::Helpers::AssetTagHelper
    include ::ActionView::Helpers::SanitizeHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::ActionView::Helpers::TextHelper
    include ::AlertMailerHelper
    include ::ActionView::Helpers::FormTagHelper
    include ::ActionView::ModelNaming
    include ::ActionView::RecordIdentifier
    include ::ActionView::Helpers::FormHelper
    include ::Kernel
    include ::ApplicationHelper
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
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
