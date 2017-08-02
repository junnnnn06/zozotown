class OrdersController < ApplicationController

  def create
    # binding.pry
    Order.create(order_params)
    redirect_to root_path, notice: "購入手続きが完了しました"
  end

  private

  def order_params
    params.permit(:item_id).merge(user_id: current_user.id)
  end

end
