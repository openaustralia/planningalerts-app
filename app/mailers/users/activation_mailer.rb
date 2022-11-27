# typed: strict
# frozen_string_literal: true

module Users
  class ActivationMailer < ApplicationMailer
    extend T::Sig

    include EmailFrom

    sig { params(user: User, token: String).returns(T.any(Mail::Message, ActionMailer::MessageDelivery)) }
    def notify(user, token)
      @user = T.let(user, T.nilable(User))
      @token = T.let(token, T.nilable(String))

      mail(
        from: email_from,
        to: user.email
      )
    end

    sig { params(user: User, token: String).returns(T.any(Mail::Message, ActionMailer::MessageDelivery)) }
    def already_activated(user, token)
      @user = T.let(user, T.nilable(User))
      @token = T.let(token, T.nilable(String))

      mail(
        from: email_from,
        to: user.email
      )
    end
  end
end