class PostsController < ApplicationController
	def index
		@post = Post.all
		@user = User.find(current_user.id)
		@writing_post = selecting_columns_by_id(current_user.id)

		File.open('public/graph1.tsv', 'w') { |file| 
			file.write("date\trating\n")
			file.write(@writing_post)
		}
	end

	def new
		@custom = Custom.find(current_user.id)
		@post = Post.new
	end

	def create
  	@post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      redirect_to new_post_path
    end
	end

	def show
		@post = Post.find(params[:id])
		@custom = Custom.find(current_user.id)
	end

	def edit
		@post = Post.find(params[:id])
		@custom = Custom.find(current_user.id)
	end

	def update 
		@post = Post.find(params[:id])
<<<<<<< HEAD
    @post.update(post_params)
=======
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
>>>>>>> master
	    if (@post)
	      redirect_to post_path
	    else
	      redirect_to edit_post_path
	    end
	end

  private 

  def post_params
    params.require(:post).permit(:user_id, :sleep, :water, :breakfast, :lunch, :dinner, :tv, :social_media , :socialization , :work, :content, :rating, :indulgence_1, :indulgence_2, :indulgence_3, :indulgence_4, :indulgence_5, :responsibility_1, :responsibility_2, :responsibility_3, :responsibility_4, :responsibility_5, :activity_1, :activity_2, :activity_3, :activity_4, :activity_5)
  end

  def selecting_columns_by_id(id)
  	keys = ['date', 'rating']
  	array = Post.where(:user_id => id).pluck( :created_at, :rating ).map { |a| "#{a[0].strftime( '%d-%b-%y')}\t#{a[1]}" }.join("\n")
  	puts array
	return array
  end

end
