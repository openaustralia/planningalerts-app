# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Admin::SiteSettingsController`.
# Please instead update this file by running `bin/tapioca dsl Admin::SiteSettingsController`.

# typed: true

class Admin::SiteSettingsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::Administrate::ApplicationHelper
    include ::Administrate::ApplicationController::HelperMethods
    include ::Admin::ApplicationHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
