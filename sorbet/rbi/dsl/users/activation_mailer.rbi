# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Users::ActivationMailer`.
# Please instead update this file by running `bin/tapioca dsl Users::ActivationMailer`.

class Users::ActivationMailer
  class << self
    sig { params(user: ::User, token: ::String).returns(::ActionMailer::MessageDelivery) }
    def notify(user, token); end
  end
end
