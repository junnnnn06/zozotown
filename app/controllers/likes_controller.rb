class LikesController < ApplicationController

  def create
    # binding.pry
    @like = Like.create(user_id: current_user.id, item_id: params[:item_id])
    @likes = Like.where(item_id: params[:item_id])
    @item = Item.find(params[:id])
    # binding.pry
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
    like.destroy
    @likes = Like.where(item_id: params[:item_id])
    @item = Item.find(params[:id])
  end

  private

end
