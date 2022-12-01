# frozen_string_literal: true

# You can preview the mails by browsing to http://localhost:3000/rails/mailers

require "factory_bot_rails"

class LoginAndAccountPreview < ActionMailer::Preview
  # It shows a different email address in the "to" and the body of the email.
  # TODO: Figure out what's going on and fix it
  def confirmation_instructions
    user = FactoryBot.build_stubbed(:user)
    Devise::Mailer.confirmation_instructions(user, "faketoken")
  end

  # It shows a different email address in the "to" and the body of the email.
  # TODO: Figure out what's going on and fix it
  def reset_password_instructions
    user = FactoryBot.build_stubbed(:user)
    Devise::Mailer.reset_password_instructions(user, "faketoken")
  end

  def activate_account_instructions
    user = FactoryBot.build_stubbed(:user)
    Users::ActivationMailer.notify(user, "faketoken")
  end

  def activate_account_already_activated
    user = FactoryBot.build_stubbed(:user)
    Users::ActivationMailer.already_activated(user, "faketoken")
  end
end
