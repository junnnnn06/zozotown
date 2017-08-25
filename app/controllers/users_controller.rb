class UsersController < ApplicationController

  def index
    # @user = User.find(current_user[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: "ユーザー情報を更新しました"
    else
      render :edit
    end
  end

  def create
  end

  private

  def user_params
    # binding.pry
    params.require(:user).permit(:name,:email)
  end


end