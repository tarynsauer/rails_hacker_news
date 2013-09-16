class CommentsController < ApplicationController
 def index
    @comments = Comment.all
  end

  def create
    if logged_in?
      user = User.find(session[:user_id])
      post = Post.find(params[:post_id])
      comment = Comment.create(:body => params[:comment][:body])
      post.comments << comment
      user.comments << comment
      # content_type :json
      # {content: comment.body, user:user.name }.to_json
      redirect_to post_path(post)
    else
      redirect to '/login'
    end
  end

  def destroy

  end

end
