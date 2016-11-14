class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def new
    @custom = Custom.find(current_user.id)
		@post = Post.new
	end

	def create
  	@post = Post.find(params[:id])
		@custom = Custom.find(current_user.id)
	end

	def create
  		@new_post = Post.new(
      		sleep: params[:post][:sleep],
      		water: params[:post][:water],
      		breakfast: params[:post][:breakfast],
      		lunch: params[:post][:lunch],
      		dinner: params[:post][:dinner],
      		tv: params[:post][:tv],
      		social_media: params[:post][:social_media],
      		socialization: params[:post][:socialization],
      		work: params[:post][:work],
      		content: params[:post][:content],
      		rating: params[:post][:rating],
      		indulgence_1: params[:post][:indulgence_1],
      		indulgence_2: params[:post][:indulgence_2],
      		indulgence_3: params[:post][:indulgence_3],
      		indulgence_4: params[:post][:indulgence_4],
      		indulgence_5: params[:post][:indulgence_5],
      		responsibility_1: params[:post][:responsibility_1],
      		responsibility_2: params[:post][:responsibility_2],
      		responsibility_3: params[:post][:responsibility_3],
      		responsibility_4: params[:post][:responsibility_4],
      		responsibility_5: params[:post][:responsibility_5],
      		activity_1: params[:post][:activity_1],
      		activity_2: params[:post][:activity_2],
      		activity_3: params[:post][:activity_3],
      		activity_4: params[:post][:activity_4],
      		activity_5: params[:post][:activity_5])

    	       if @new_post
      		redirect_to posts_path
    	       else
      		redirect_to new_post_path
    	       end
	end

	def show
		@post = Post.find(params[:id])
		@custom = Custom.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		#@custom = Custom.find(params[:id])
	end

	def update 
		@post = Post.find(params[:id])
    	@post.update({
      		sleep: params[:post][:sleep],
      		water: params[:post][:water],
      		breakfast: params[:post][:breakfast],
      		lunch: params[:post][:lunch],
      		dinner: params[:post][:dinner],
      		tv: params[:post][:tv],
      		social_media: params[:post][:social_media],
      		socialization: params[:post][:socialization],
      		work: params[:post][:work],
      		content: params[:post][:content],
      		rating: params[:post][:rating],
      		indulgence_1: params[:post][:indulgence_1],
      		indulgence_2: params[:post][:indulgence_2],
      		indulgence_3: params[:post][:indulgence_3],
      		indulgence_4: params[:post][:indulgence_4],
      		indulgence_5: params[:post][:indulgence_5],
      		responsibility_1: params[:post][:responsibility_1],
      		responsibility_2: params[:post][:responsibility_2],
      		responsibility_3: params[:post][:responsibility_3],
      		responsibility_4: params[:post][:responsibility_4],
      		responsibility_5: params[:post][:responsibility_5],
      		activity_1: params[:post][:activity_1],
      		activity_2: params[:post][:activity_2],
      		activity_3: params[:post][:activity_3],
      		activity_4: params[:post][:activity_4],
      		activity_5: params[:post][:activity_5]
    	})
	    if (@post)
	      redirect_to url_for(:controller => :posts, :action => :show)
	    else
	      redirect_to url_for(:controller => :posts, :action => :edit)
	    end
	end
end