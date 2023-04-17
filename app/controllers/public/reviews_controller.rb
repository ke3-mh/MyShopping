class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to review_path(@review.id)
  end

  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:name, :caption, item_images: [])
  end
end
