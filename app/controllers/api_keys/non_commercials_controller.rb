# typed: strict
# frozen_string_literal: true

module ApiKeys
  class NonCommercialsController < ApplicationController
    extend T::Sig

    sig { void }
    def new; end
  end
end
