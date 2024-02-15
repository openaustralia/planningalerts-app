# frozen_string_literal: true

require "spec_helper"

describe "Authorities" do
  include Devise::Test::IntegrationHelpers

  describe "detail page for an authority that is not covered in the new design" do
    before do
      # Give a name to the user so screenshots are consistent with percy
      sign_in create(:confirmed_user, tailwind_theme: true, name: "Jane Ng")
      authority = create(:authority, full_name: "Byron Shire Council")
      visit authority_path(authority.short_name_encoded)
    end

    it "explains why the authority isn't covered yet" do
      expect(page).to have_content("This authority is not yet covered by Planning Alerts")
    end

    describe "accessibility test", js: true do
      it "passes" do
        expect(page).to be_axe_clean
      end
    end

    # rubocop:disable RSpec/NoExpectationExample
    it "renders the page", js: true do
      page.percy_snapshot("Authority not covered")
    end
    # rubocop:enable RSpec/NoExpectationExample
  end

  describe "detail page for an authority in the new design" do
    before do
      # Give a name to the user so screenshots are consistent with percy
      sign_in create(:confirmed_user, tailwind_theme: true, name: "Jane Ng")
      authority = create(:authority, full_name: "Byron Shire Council", morph_name: "planningalerts-scrapers/byron")
      # We need it to have at least one application so it's not "broken"
      # TODO: I don't we think we need all the application information here
      create(:geocoded_application,
             authority:,
             address: "24 Bruce Road Glenbrook",
             description: "A lovely house",
             lat: -33.772609,
             lng: 150.624256,
             lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(150.624256, -33.772609))
      visit authority_path(authority.short_name_encoded)
    end

    describe "accessibility test", js: true do
      it "passes" do
        expect(page).to be_axe_clean
      end
    end

    # rubocop:disable RSpec/NoExpectationExample
    it "renders the page", js: true do
      page.percy_snapshot("Authority")
    end
    # rubocop:enable RSpec/NoExpectationExample
  end
end
