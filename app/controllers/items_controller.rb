class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @items = Item.new
    # if current_user.customer? || current_user.sys_admin?
    # else
    #   render 403
    # end
  end

  def new
  end

end
