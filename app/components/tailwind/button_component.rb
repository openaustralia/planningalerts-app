# typed: strict
# frozen_string_literal: true

module Tailwind
  class ButtonComponent < ViewComponent::Base
    extend T::Sig

    sig { params(tag: Symbol, size: String, bg: Symbol, href: T.nilable(String)).void }
    def initialize(tag:, size:, bg:, href: nil)
      super
      raise "Unexpected tag: #{tag}" unless %i[a button].include?(tag)
      raise "href not set" if href.nil? && tag == :a

      case size
      when "lg"
        classes = %w[px-4 py-2 text-lg]
      when "2xl"
        classes = %w[px-11 sm:px-16 py-3 sm:py-4 text-2xl]
      else
        raise "Unexpected size #{size}"
      end

      case bg
      when :navy, :green
        classes << "bg-#{bg}"
      else
        raise "Unexpected bg #{bg}"
      end

      classes += %w[font-semibold text-white]
      @classes = T.let(classes, T.nilable(T::Array[String]))
      @tag = tag
      @href = href
    end
  end
end
