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
    if params[:latest]
      @reviews = Review.latest
    elsif params[:old]
      @reviews = Review.old
    else
      @reviews = Review.all
    end
    @user = User.all
  end

  def show
    @review = Review.find(params[:id])
    @user = User.find(@review.user_id)
    @comment = Comment.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to review_path(@review), notice: "You have updated review successfully."
    else
      render "edit"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to users_path
  end

  private

  def review_params
    # params.require(:review).permit(:name, :caption, item_images: [])
    params.require(:review).permit(:name, :caption, :item_image, :tag)
  end
end
