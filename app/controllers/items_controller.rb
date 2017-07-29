class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at Desc").limit(6)
    @item_recommend = Item.where(recommend: 1).order("RAND()").limit(6)
    @item_ranking = Item.where(popular: 1).order("created_at Desc").limit(6)
  end

  def new
  end

  def edit
    @item = Item.new
  end

  def create
    Item.create(item_params)
      redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :description, :count, :number, :recommend, :popular)
  end

  # def image_cache
  #   params.require(:item).permit(:image)
  # end

end
