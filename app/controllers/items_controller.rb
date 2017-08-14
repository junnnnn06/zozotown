class ItemsController < ApplicationController
  # before_action :set_item, only: [:show]
  before_action :authenticate_user!

  def index
    @user = User.find(current_user[:id])
    @item_all = Item.order("created_at Desc").limit(6)
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
    @item = Item.find(params[:id])
    @likes = Like.where(item_id: params[:item_id])
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :description, :count, :number, :recommend, :popular)
  end

  def set_item

  end

end
