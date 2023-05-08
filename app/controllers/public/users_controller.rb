class Public::UsersController < ApplicationController
  def show
    @user = current_user
    @goods = Good.where(user_id: current_user.id)
    @reviews = Review.where(user_id: current_user.id)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to users_mypage_path
    else
      render :edit
    end
  end

  def index
    @user = User.find(current_user.id)
    @reviews = @user.reviews
  end

  def goodlist

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image)
  end

end
