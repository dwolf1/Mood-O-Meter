class CustomsController < ApplicationController

	def index

	end

	def new 
		@custom = Custom.new
	end 

	def create
		# @user = User.find_by_id(current_user.id) 
		@custom = Custom.new(custom_params.merge( {user_id: current_user.id} ))
			if @custom.save
				redirect_to '/posts/new'
			end
	end

	def edit 

	end

	private 

	def custom_params
  		params.require(:custom).permit(:responsibility_1, :responsibility_2, :responsibility_3, :responsibility_4, :responsibility_5, :activity_1, :activity_2, :activity_3, :activity_4, :activity_5, :indulgence_1, :indulgence_2, :indulgence_3, :indulgence_4, :indulgence_5)
  	end

end
