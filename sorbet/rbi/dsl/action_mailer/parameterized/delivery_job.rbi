# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailer::Parameterized::DeliveryJob`.
# Please instead update this file by running `bin/tapioca dsl ActionMailer::Parameterized::DeliveryJob`.

# typed: true

class ActionMailer::Parameterized::DeliveryJob
  sig { params(mailer: T.untyped, mail_method: T.untyped, delivery_method: T.untyped, params: T.untyped, args: T.untyped).returns(T.any(ActionMailer::Parameterized::DeliveryJob, FalseClass)) }
  def self.perform_later(mailer, mail_method, delivery_method, params, *args); end

  sig { params(mailer: T.untyped, mail_method: T.untyped, delivery_method: T.untyped, params: T.untyped, args: T.untyped).returns(T.untyped) }
  def self.perform_now(mailer, mail_method, delivery_method, params, *args); end
end
