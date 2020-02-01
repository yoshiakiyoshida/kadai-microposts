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
  end
end
