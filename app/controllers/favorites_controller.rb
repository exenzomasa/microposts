class FavoritesController < ApplicationController
  before_action :require_user_logged_in
    def create
      micropost = Micropost.find(params[:micropost_id])
      current_user.like(micropost)
      flash[:success] = 'Micropostをお気に入りにしました。'
      redirect_to root_url
    end
  
    def destroy
      micropost = Micropost.find(params[:micropost_id])
      current_user.unlike(micropost)
      flash[:success] = 'Micropostのお気に入りをやめました。'
      redirect_to root_url
    end
end
