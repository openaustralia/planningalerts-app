# typed: strict
# frozen_string_literal: true

module Tailwind
  class ButtonComponent < ViewComponent::Base
    extend T::Sig

    sig { params(tag: Symbol, size: String, type: Symbol, href: T.nilable(String), icon: T.nilable(Symbol)).void }
    def initialize(tag:, size:, type:, href: nil, icon: nil)
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

      case type
      when :primary
        classes << "text-white bg-green"
      when :secondary
        classes << "text-white bg-warm-grey"
      # This is not strictly an "inverse" but is good to be used on darker coloured backgrounds
      when :inverse
        classes << "text-white bg-navy"
      # TODO: Don't like that we have two "inverse" types
      when :inverse_primary
        classes << "text-green bg-white border-2"
      else
        raise "Unexpected type #{type}"
      end

      case icon
      when nil
        icon_path = nil
      when :trash
        icon_path = "tailwind/trash.svg"
        icon_alt = "Trash icon"
      else
        raise "Unexpected icon #{icon}"
      end

      classes += %w[font-semibold]
      @classes = T.let(classes, T.nilable(T::Array[String]))
      @tag = tag
      @href = href
      @icon_path = T.let(icon_path, T.nilable(String))
      @icon_alt = T.let(icon_alt, T.nilable(String))
    end
  end
end
