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
  			redirect_to url_for(:controller => :posts, :action => :index)
  			# if (@user)
  				# redirect_to url_for '/posts'
  			# else
  				# redirect_to url_for '/users/sign_up' 				=> could also write like this
  		else
  			redirect_to url_for(:controller => :application, :action => :new)
  		end
 	end
end
