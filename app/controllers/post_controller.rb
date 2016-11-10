class PostController < ApplicationController
	
	def index

	end

	def show 
		@post = Post.find(params[:id])
		@custom = Custom.find(params[:id])
	end

end
