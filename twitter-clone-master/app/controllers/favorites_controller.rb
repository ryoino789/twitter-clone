class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    post = Micropost.find(params[:micropost_id])
    user = post.user
    current_user.favorite(post)
    flash[:success] = 'お気に入りを追加しました'
    redirect_to user
  end

  def destroy
    favorite = Favorite.find(params[:id])
    post = Micropost.find_by(id: favorite.micropost_id)
    user = User.find_by(id: post.user_id)
    current_user.unfavorite(post)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to user
  end
end
