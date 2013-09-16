class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    current_user.posts << Post.create(params[:post])
    redirect_to posts_path
  end

  def destroy

  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
end
