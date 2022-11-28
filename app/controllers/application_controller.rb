# typed: strict
# frozen_string_literal: true

# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  extend T::Sig

  # For sorbet
  include Devise::Controllers::Helpers

  include Pundit::Authorization

  theme :theme_resolver

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  before_action :set_header_variable
  before_action :configure_permitted_parameters, if: :devise_controller?
  # This stores the location on every request so that we can always redirect back after logging in
  # See https://github.com/heartcombo/devise/wiki/How-To:-%5BRedirect-back-to-current-page-after-sign-in,-sign-out,-sign-up,-update%5D
  before_action :store_user_location!, if: :storable_location?

  sig { void }
  def authenticate_active_admin_user!
    authenticate_user!
    render plain: "Not authorised", status: :forbidden unless T.must(current_user).admin?
  end

  private

  sig { returns(String) }
  def theme_resolver
    # Only show a different theme if the user is an admin
    if session[:theme] && current_user&.admin?
      session[:theme]
    else
      "standard"
    end
  end

  sig { void }
  def set_header_variable
    @alert_count = T.let(Stat.applications_sent, T.nilable(Integer))
  end

  sig { void }
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end

  # Its important that the location is NOT stored if:
  # - The request method is not GET (non idempotent)
  # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
  #    infinite redirect loop.
  # - The request is an Ajax request as this can lead to very unexpected behaviour.
  # - The request is not a Turbo Frame request ([turbo-rails](https://github.com/hotwired/turbo-rails/blob/main/app/controllers/turbo/frames/frame_request.rb))
  sig { returns(T::Boolean) }
  def storable_location?
    request.get? &&
      is_navigational_format? &&
      !devise_controller? &&
      controller_name != "activations" &&
      !request.xhr?
    # &&
    # !turbo_frame_request?
  end

  sig { void }
  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
