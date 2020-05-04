class PostsController < ApplicationController
def index
    @posts = Post.all
end
def new
    @post = Post.new
end
def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    if @post.save
        flash[:success] = "Your post has been created."
        redirect_to @post
    else
        flash[:alert] = "flashアラート"
        render :new
    end
end
def show
    @post = Post.find(params[:id])
end
  
private
  
def post_params
    params.require(:post).permit(:caption, :image)
end
end
