class ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.create(item_params)
      redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:image)
  end

  def image_cache
    params.require(:item).permit(:image)
  end

end
