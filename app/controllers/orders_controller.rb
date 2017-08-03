class OrdersController < ApplicationController

  def create

    @order = Order.new(order_params)
    if @order.save
      @item = Item.find(params[:item_id])
      @item.count -= 1
      @item.save
      redirect_to root_path, notice: "商品を購入しました"
    else
      redirect_to item_path, alert: "購入に失敗しました"
    end
  end

  def show
  end

  private

  def order_params
    params.permit(:item_id).merge(user_id: current_user.id)
  end

  def count_params
    params.permit(:count)
  end
end
