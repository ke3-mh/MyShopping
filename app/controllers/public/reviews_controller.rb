class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
     redirect_to review_path(@review.id)
    else
      render :new
    end
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
    # params.require(:review).permit(:name, :caption, item_images: [])
    params.require(:review).permit(:name, :caption, :item_image)
  end
end
