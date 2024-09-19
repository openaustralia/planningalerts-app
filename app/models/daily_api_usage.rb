# typed: strict
# frozen_string_literal: true

class DailyApiUsage < ApplicationRecord
  extend T::Sig

  belongs_to :api_key

  sig { params(api_key_id: Integer, date: Date).void }
  def self.increment(api_key_id:, date:)
    begin
      usage = DailyApiUsage.find_or_create_by!(api_key_id:, date:)
    rescue ActiveRecord::RecordNotUnique
      retry
    end
    # rubocop:disable Rails/SkipsModelValidations
    usage.increment!(:count)
    # rubocop:enable Rails/SkipsModelValidations
  end

  sig { params(date_from: Date, date_to: Date, number: Integer).returns(T::Hash[ApiKey, Numeric]) }
  def self.top_usage_in_date_range(date_from:, date_to:, number:)
    # For tapioca to not generate complete nonsense for the type here the sum needs to go directly after the group
    count = where(date: date_from..date_to).order("SUM(count) DESC").limit(number).group(:api_key_id).sum(:count)
    count.transform_keys { |id| ApiKey.find(id) }
  end

  sig { params(date_from: Date, date_to: Date, number: Integer).returns(T::Array[{ api_key: ApiKey, mean: Float }]) }
  def self.top_average_usage_in_date_range(date_from:, date_to:, number:)
    r = top_usage_in_date_range(date_from:, date_to:, number:)
    r = r.transform_values { |v| v.to_f / (date_to - date_from + 1) }
    r.map { |api_key, mean| { api_key:, mean: } }
  end
end
