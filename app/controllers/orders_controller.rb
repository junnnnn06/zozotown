class OrdersController < ApplicationController

  def index
    # binding.pry
    @orders = current_user.orders(params[:id])
    @item = current_user.orders(params[:item_id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      @item = Item.find(params[:item_id])
      @item.count -= 1
      @item.save
      NoticeMailer.sendmail_confirm(current_user).deliver_now
      redirect_to root_path, notice: "商品を購入しました。完了の場合はメールが届きますのでご確認をお願いいたします。"
    else
      redirect_to item_path, alert: "購入に失敗しました"
    end
  end

  def show
  end

  private

  def order_params
    params.permit(:item_id).merge(user_id: current_user.id, item_name: params[:name], item_price: params[:price], item_image: params[:image])
  end

  def count_params
    params.permit(:count)
  end
end
