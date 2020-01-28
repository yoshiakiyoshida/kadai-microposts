class FavoritesController < ApplicationController
  def create
#    user = User.find(params[:follow_id])
#    current_user.follow(user)
#    flash[:success] = 'ユーザをフォローしました。'
#    redirect_to user
    puts 'OK'
    puts params[:micropost_id]
  end

  def destroy
  end
end
