class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = User.find(params[:_id])
    current_user.like(micropost)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to user
  end
end
