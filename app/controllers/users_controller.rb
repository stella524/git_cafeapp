class UsersController < ApplicationController
  def show
    @nickname = User.find(params[:user_id]).nickname
    @shops =Shop.where(user_id: params[:user_id]).page(params[:page]).per(5).order("created_at DESC")
  end
  
  
end
