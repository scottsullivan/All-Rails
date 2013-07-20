class PostsController < ApplicationController
  def new #method (or action) definition

  end #method end

  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(post_params)

  	@post.save
  	redirect_to @post
  end

  def show
  	@post = Post.find(params[:id])
  	@a = 5
  end

  private
  	def post_params
  		params.require(:post).permit(:title, :text)
  	end
end
