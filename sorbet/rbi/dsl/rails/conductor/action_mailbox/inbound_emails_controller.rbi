# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::ActionMailbox::InboundEmailsController`.
# Please instead update this file by running `bin/tapioca dsl Rails::Conductor::ActionMailbox::InboundEmailsController`.

class Rails::Conductor::ActionMailbox::InboundEmailsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::Admin::ApplicationHelper
    include ::ActionView::Helpers::AssetUrlHelper
    include ::ActionView::Helpers::UrlHelper
    include ::ActionView::Helpers::AssetTagHelper
    include ::ActionView::Helpers::SanitizeHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::ActionView::Helpers::TextHelper
    include ::AlertMailerHelper
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
