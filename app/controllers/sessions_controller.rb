class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:session][:name],params[:session][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      puts @errors = "Username and Password didn't match"
      redirect_to('/')
    end
  end

  def destroy
    session.clear
    redirect_to('/')
  end
end
