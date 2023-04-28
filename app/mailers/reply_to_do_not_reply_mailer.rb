# typed: strict
# frozen_string_literal: true

class ReplyToDoNotReplyMailer < ApplicationMailer
  extend T::Sig

  sig { params(mail: Mail::Message).returns(T.any(Mail::Message, ActionMailer::MessageDelivery)) }
  def reply(mail)
    # So we don't have to figure out the intricacies of how to set the in-reply-to and references headers
    reply = mail.reply

    headers(
      "In-Reply-To" => reply.in_reply_to,
      "References" => reply.references
    )
    mail(
      to: reply.to
    )
  end
end
