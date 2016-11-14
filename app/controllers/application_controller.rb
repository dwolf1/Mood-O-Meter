class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [ :firstname, :lastname, :dob, :gender, :email, :password, :password_confirmation, :zip_code, :relationship, :education, :political, :ethnicity, :religion])
     devise_parameter_sanitizer.permit(:account_update, keys: [ :firstname, :lastname, :dob, :gender, :email, :password, :password_confirmation, :zip_code, :relationship, :education, :political, :ethnicity, :religion])
 end

 	def new
 		@user = User.new
 		if (@user)
  			redirect_to url_for(:controller => :profiles, :action => :new)
  			# if (@user)
  				# redirect_to url_for '/posts'
  			# else
  				# redirect_to url_for '/users/sign_up' 				=> could also write like this
  		else
  			redirect_to url_for(:controller => :application, :action => :new)
  		end
 	end


  def after_sign_in_path_for (resource)

    if Custom.where(["user_id = ?", current_user.id]).first 
       posts_path
    else
       new_profile_path
    end
  end


end
