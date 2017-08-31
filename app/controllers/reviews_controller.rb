class ReviewsController < ApplicationController

  def new
    # binding.pry
    @item = Item.find(params[:item_id])
    @review = Review.new
  end

  def create
    # binding.pry
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    # binding.pry
    if @review.save
      redirect_to root_path, notice: 'レビュー入力ありがとうございました。'
    else
      render :new
    end
  end

private

  def review_params
    # binding.pry
    params.require(:review).permit(:review).merge(user_id: current_user.id, star_rate: params[:star_rate], item_id: params[:item_id])
  end

end
