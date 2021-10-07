# typed: strong
# This is an autogenerated file for Rails' jobs.
# Please rerun bundle exec rake rails_rbi:jobs to regenerate.
class LogApiCallJob
  sig do
    params(
      api_key: String,
      ip_address: String,
      query: String,
      params: T::Hash[String, T.nilable(T.any(Integer, String))],
      user_agent: T.nilable(String),
      time_as_float: Float
    ).void
  end
  def self.perform_later(api_key:, ip_address:, query:, params:, user_agent:, time_as_float:); end

  sig do
    params(
      api_key: String,
      ip_address: String,
      query: String,
      params: T::Hash[String, T.nilable(T.any(Integer, String))],
      user_agent: T.nilable(String),
      time_as_float: Float
    ).void
  end
  def self.perform_now(api_key:, ip_address:, query:, params:, user_agent:, time_as_float:); end

  sig do
    params(
      wait: T.nilable(ActiveSupport::Duration),
      wait_until: T.nilable(T.any(ActiveSupport::TimeWithZone, Date, Time)),
      queue: T.nilable(T.any(String, Symbol)),
      priority: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def self.set(wait: nil, wait_until: nil, queue: nil, priority: nil); end
end