# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Admin::CommentsController`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
module Admin
  class CommentsController
    module HelperMethods
      include ::ActionController::Base::HelperMethods
      include ::ActionText::ContentHelper
      include ::ActionText::TagHelper
      include ::Admin::ApplicationHelper
      include ::Administrate::ApplicationController::HelperMethods
      include ::Administrate::ApplicationHelper
    end

    class HelperProxy < ::ActionView::Base
      include HelperMethods
    end

    sig { returns(HelperProxy) }
    def helpers; end
  end
end