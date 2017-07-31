class ItemsController < ApplicationController

  def index
    @items = Item.order("created_at Desc").limit(6)
    @item_recommend = Item.where(recommend: 1).order("RAND()").limit(6)
    @item_ranking = Item.where(popular: 1).order("created_at Desc").limit(6)
  end

  def new
    @item = Item.new
  end

  def edit

  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :description, :count, :number, :recommend, :popular)
  end

  # def image_cache
  #   params.require(:item).permit(:image)
  # end

end
