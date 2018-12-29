# frozen_string_literal: true

require "spec_helper"

describe CommentsController do
  before :each do
    request.env["HTTPS"] = "on"
  end

  describe "#per_week" do
    before :each do
      Timecop.freeze(Time.zone.local(2016, 1, 5))

      create(:authority, short_name: "Blue Mountains", id: 1)
    end

    after :each do
      Timecop.return
    end

    subject(:get_authority_comments_per_week) do
      get(:per_week, params: { authority_id: "blue_mountains", format: :json })
    end

    it { expect(get_authority_comments_per_week).to be_successful }

    context "when the authority has no applications" do
      it "returns an empty Array as json" do
        get_authority_comments_per_week

        expect(JSON.parse(response.body)).to eq([])
      end
    end

    it "returns comments per week for an authority as json" do
      VCR.use_cassette("planningalerts") do
        create(
          :geocoded_application,
          authority_id: 1,
          date_scraped: Date.new(2015, 12, 24),
          id: 1
        )

        create(:confirmed_comment, application_id: 1, confirmed_at: Date.new(2015, 12, 26))
        create(:confirmed_comment, application_id: 1, confirmed_at: Date.new(2015, 12, 26))
        create(:confirmed_comment, application_id: 1, confirmed_at: Date.new(2015, 12, 26))
        create(:confirmed_comment, application_id: 1, confirmed_at: Date.new(2016, 1, 4))
      end

      get_authority_comments_per_week

      expect(JSON.parse(response.body)).to eq(
        [
          ["2015-12-20", 3],
          ["2015-12-27", 0],
          ["2016-01-03", 1]
        ]
      )
    end
  end
end
