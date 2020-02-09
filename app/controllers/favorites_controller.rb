class FavoritesController < ApplicationController
  def create
#    user = User.find(params[:follow_id])
#    current_user.follow(user)
#    flash[:success] = 'ユーザをフォローしました。'
#    redirect_to user
    puts 'OK'
    puts params[:micropost_id]
    
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to current_user
  end

  def destroy
    puts 'destroy'
    micropost = Micropost.find(params[:id])
    current_user.unlike(micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to current_user
  end
  
  def likes
    @Favorites = Favorite.where(user_id:current_user.id)
  end
  
end
