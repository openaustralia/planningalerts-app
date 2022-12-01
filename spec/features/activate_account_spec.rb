# frozen_string_literal: true

require "spec_helper"

describe "Activate account" do
  context "with a confirmed user that has not been activated" do
    before do
      u = User.new(email: "matthew@oaf.org.au", from_alert_or_comment: true, confirmed_at: Time.zone.now)
      u.skip_confirmation_notification!
      u.save!(validate: false)
    end

    it "Successfully does an account activation" do
      visit "/users/activation/new"
      fill_in "Email", with: "matthew@oaf.org.au"
      click_button "Send me account activation instructions"

      expect(page).to have_content "If your email address exists in our database, you will receive an account activation link"

      expect(unread_emails_for("matthew@oaf.org.au").size).to eq 1
      open_email("matthew@oaf.org.au")

      expect(current_email).to have_subject("PlanningAlerts: Account activation instructions")
      expect(current_email.default_part_body.to_s).to include("Someone has requested a link to activate your account. You can do this through the link below.")

      visit_in_email("Activate my account")

      fill_in "Your full name", with: "Matthew"
      fill_in "Password", with: "my new password"
      click_button "Activate my account"

      expect(page).to have_content "Your account has been activated successfully. You are now signed in"
      expect(page).to have_content "Matthew"

      user = User.find_by(email: "matthew@oaf.org.au")
      expect(user.name).to eq "Matthew"
      expect(user.encrypted_password).not_to be_nil
    end
  end

  context "with an already activated user" do
    before do
      create(:confirmed_user, email: "matthew@oaf.org.au")
    end

    it "gets a different email" do
      visit "/users/activation/new"
      fill_in "Email", with: "matthew@oaf.org.au"
      click_button "Send me account activation instructions"

      expect(page).to have_content "If your email address exists in our database, you will receive an account activation link"

      expect(unread_emails_for("matthew@oaf.org.au").size).to eq 1
      open_email("matthew@oaf.org.au")

      expect(current_email).to have_subject("PlanningAlerts: Account activation instructions")
      expect(current_email.default_part_body.to_s).to include("Your account has already been activated")
    end
  end
end
