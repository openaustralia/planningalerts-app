# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::Representations::BaseController`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::Representations::BaseController`.

# typed: true

class ActiveStorage::Representations::BaseController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionController::Base::HelperMethods
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
