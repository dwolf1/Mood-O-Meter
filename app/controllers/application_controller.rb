class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [ :firstname, :lastname, :dob, :gender, :email, :password, :password_confirmation, :zip_code, :relationship, :education, :political, :ethnicity, :religion])
     devise_parameter_sanitizer.permit(:account_update, keys: [ :firstname, :lastname, :dob, :gender, :email, :password, :password_confirmation, :zip_code, :relationship, :education, :political, :ethnicity, :religion])
 end
end
