class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  USERS = { ENV.fetch("USER"){'corona'} => ENV.fetch("PASSWORD"){'12345'} }


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def new_entry_helper()
    MatchHelperJob.perform_later(Helper.last)
  end

  def new_entry_hospital()
    MatchHospitalJob.perform_later(Hospital.last)
  end

  protected
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end

end
