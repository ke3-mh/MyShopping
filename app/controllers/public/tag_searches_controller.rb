class Public::TagSearchesController < ApplicationController
  def search
    @word = params[:word]
    @reviews = Review.where("tag LIKE?","%#{@word}%")
    render "search"
  end
end
