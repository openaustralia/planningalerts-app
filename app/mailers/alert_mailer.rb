# typed: strict
# frozen_string_literal: true

class AlertMailer < ApplicationMailer
  extend T::Sig

  helper :application, :applications, :comments

  sig do
    params(
      alert: Alert,
      applications: T::Array[Application],
      comments: T::Array[Comment]
    ).returns(T.any(Mail::Message, ActionMailer::MessageDelivery))
  end
  def alert(alert:, applications: [], comments: [])
    @alert = T.let(alert, T.nilable(Alert))
    @applications = T.let(applications, T.nilable(T::Array[Application]))
    @comments = T.let(comments, T.nilable(T::Array[Comment]))

    headers(
      # The unsubscribe URL needs to accept a post
      "List-Unsubscribe-Post" => "List-Unsubscribe=One-Click",
      "List-Unsubscribe" => "<#{unsubscribe_alert_url(confirm_id: alert.confirm_id)}>",
      # This special header sets arbitrary metadata on the email in Cuttlefish
      # It's not sent on in the outgoing email
      "X-Cuttlefish-Metadata-alert-id" => alert.id.to_s,
      "X-Cuttlefish-Metadata-user-id" => T.must(alert.user).id.to_s,
      # Disable css inlining because we're already
      # doing it with maizzle and the inlining on cuttlefish strips out media queries for
      # responsive designs and some more modern css features
      "X-Cuttlefish-Disable-Css-Inlining" => "true"
    )

    attachments.inline["pencil.png"] = Rails.root.join("app/assets/images/pencil.png").read
    attachments.inline["trash.png"] = Rails.root.join("app/assets/images/trash.png").read
    attachments.inline["footer-illustration.png"] = Rails.root.join("app/assets/images/illustration/woman-looking-off2.png").read

    mail(
      from: "PlanningAlerts <no-reply@planningalerts.org.au>",
      to: alert.email,
      subject: render_to_string(
        partial: "subject",
        locals: { applications:, comments:, alert: }
      ).strip
    )
  end
end
