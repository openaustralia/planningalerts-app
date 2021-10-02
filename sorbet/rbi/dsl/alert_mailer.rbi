# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `AlertMailer`.
# Please instead update this file by running `tapioca dsl`.

# typed: true
class AlertMailer
  sig { params(alert: Alert, applications: T::Array[Application], comments: T::Array[Comment]).returns(::ActionMailer::MessageDelivery) }
  def self.alert(alert, applications, comments = T.unsafe(nil)); end

  sig { params(alert: Alert).returns(::ActionMailer::MessageDelivery) }
  def self.new_signup_attempt_notice(alert); end
end