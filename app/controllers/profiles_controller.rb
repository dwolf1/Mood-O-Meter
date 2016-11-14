class ProfilesController < ApplicationController

	def index

	end

	def new 
		@profile = Profile.new
		@user = User.new
	end 

	def create
		@user = User.find_by_id(current_user.id) 
		@profile = Profile.new(profile_params)
		if @profile.save
			redirect_to '/'
		end
	end

	def edit 

	end

private 

	def profile_params
  		params.require(:profile).permit(:zip_code,:income,:relationship,:education,:political,:ethnicity,:religion)
  	end

end
