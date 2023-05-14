class Public::GoodsController < ApplicationController

  def create
    review = Review.find(params[:review_id])
    @good = current_user.goods.new(review_id: review.id)
    @good.save
    render 'replace_good_btn'
  end

  def destroy
    review = Review.find(params[:review_id])
    @good = current_user.goods.find_by(review_id: review.id)
    @good.destroy
    render 'replace_good_btn'
  end
end
