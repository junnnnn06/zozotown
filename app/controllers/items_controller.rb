class ItemsController < ApplicationController
  # before_action :set_item, only: [:show]
  before_action :authenticate_user!

  def index
    @earning_ranking = Order.group(:item_image,:item_id).order('count_item_image Desc').limit(5).count(:item_image).keys
    # @orders = Order.find(params[:item_id])
    @user = User.find(current_user[:id])
    @item_all = Item.order("created_at Desc").limit(6)
    @item_recommend = Item.where(recommend: 1).order("RAND()").limit(6)
    @item_ranking = Item.where(popular: 1).order("created_at Desc").limit(6)
  end

  def new
    @item = Item.new
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
    # binding.pry
    @item = Item.find(params[:id])
    @review = @item.reviews.order("created_at Desc")
    @likes = Like.where(item_id: params[:item_id])
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :description, :count, :number, :recommend, :popular)
  end

end
