class PostsController < ApplicationController
	def index
		@post = Post.all
	end



	def new
		@custom = Custom.new
		@post = Post.new
	end



	def create
  		@post = Post.find(params[:id])
	end



	def show
		@post = Post.find(params[:id])
		@custom = Custom.find(params[:id])
	end
end
