class ShopsController < ApplicationController
  before_action :move_to_index,except: :index 
  
  def index
    @shops = Shop.includes(:user).order("created_at DESC").page(params[:page]).per("5")
  end
  
  def new
  end
  
  def create
    Shop.create(image: params[:image],shop_name: params[:shop_name],text: params[:text],smoking_ban: params[:smoking_ban],wifi: params[:wifi],withdog: params[:withdog],user_id: current_user.id)
  end
  
  def destroy
    shop = Shop.find(params[:id])
    if shop.user_id == current_user.id
      shop.destroy
      redirect_to action: :index
    end
  end
  
  def edit
    @shop = Shop.find(params[:id])
  end
  
  def update
    shop = Shop.find(params[:id])
    if current_user.id == shop.user_id
      shop.update(image: params[:image],shop_name: params[:shop_name],text: params[:text],smoking_ban: params[:smoking_ban],wifi: params[:wifi],withdog: params[:withdog],user_id: current_user.id)
      redirect_to action: :index
    end
  end
  
  
  private
  
  def shops_params
    params.permit(:image,:shop_name,:text,:smoking_ban,:wifi,:withdog)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
