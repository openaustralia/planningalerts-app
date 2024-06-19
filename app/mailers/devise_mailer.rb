# typed: strict
# frozen_string_literal: true

# We're overriding the devise mailer so that we can use different view templates for the "tailwind" theme
class DeviseMailer < Devise::Mailer
  extend T::Sig

  # To override the template path had to do this headers_for workaround instead of:
  # default template_path: "_tailwind/devise/mailer"
  # which doesn't work. See https://github.com/heartcombo/devise/issues/4842
  sig { params(action: T.untyped, opts: T.untyped).returns(T.untyped) }
  def headers_for(action, opts)
    super.merge!(template_path: (resource.tailwind_theme ? "_tailwind/devise/mailer" : "devise/mailer"))
  end
end