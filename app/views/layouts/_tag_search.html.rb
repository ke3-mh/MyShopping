class TagSearchesController < ApplicationController
  def search
    @model = Review
    @word = params[:word]
    @books = Review.where("tag LIKE?","%#{@word}%")
    render "searches/result"
  end
end