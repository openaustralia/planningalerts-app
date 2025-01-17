# typed: strict
# frozen_string_literal: true

module Admin
  class ApiUsagesPolicy < ApplicationPolicy
    extend T::Sig

    sig { returns(T::Boolean) }
    def index?
      user.has_role?(:admin) || user.has_role?(:api_editor)
    end
  end
end
