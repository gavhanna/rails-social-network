class StaticPagesController < ApplicationController
    before_action :authenticate_user!
  def home
  end
  
  def profile
    @comment = Comment.new
    @comments = Comment.all
    if params[:id]
      url_id = params[:id]
      @user = User.find_by_id(url_id)
    else
      @user = current_user
    end
    
    @userPosts = Post.where("user_id = ?", @user.id)
    @userComments = Comment.where("user_id = ?", @user.id)
  end
end
