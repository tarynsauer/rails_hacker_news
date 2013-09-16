class UsersController < ApplicationController

  def create
    User.create(params[:user])
    render 'pages/index'
  end

  def show
    @user = User.find(params[:id])
  end

  def comments
    @comments = current_user.comments
    render 'comments/index'
  end

  def posts
    @posts = current_user.posts
    render 'posts/index'
  end
end
