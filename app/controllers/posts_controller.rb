class PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :owns_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all.order("updated_at DESC")
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			flash[:success] = 'Your post was sucessfully created.'
			redirect_to posts_path
		else
			flash.now[:error] = "Post was not created. Please try again."
			render :new
		end
	end

	def edit
		@post=Post.find(params[:id])
		@author=@post.user
	end

	def update
		@post=Post.find(params[:id])
		if @post.update(post_params)
			flash[:success] = "Post successfully updated."
		else
			flash.now[:alert] = "Failed to update post."
			render :edit
		end
	end

	def destroy
		@post=Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	def show
		@post=Post.find(params[:id])
		@author=@post.user
	end

	private

	def post_params
		params.require(:post).permit(:image, :caption)
	end

	def owns_post
		@post=Post.find(params[:id])
		unless current_user = @post.user
			flash[:alert] = 'Unauthorized resource requested'
			redirect_to root_path
		end
	end

end
