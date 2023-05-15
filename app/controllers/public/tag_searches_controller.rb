class Public::TagSearchesController < ApplicationController
  def search
    @model = Review
    @word = params[:word]
    @reviews = Review.where("tag LIKE?","%#{@word}%")
    render "searches/result"
  end
end
