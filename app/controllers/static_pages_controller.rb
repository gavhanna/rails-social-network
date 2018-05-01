class StaticPagesController < ApplicationController
    before_action :authenticate_user!
  def home
  end
  
  def profile
    if params[:id]
      url_id = params[:id]
      @user = User.find_by_id(url_id)
    else
      @user = current_user
    end
  end
end
