class ApplicationController < ActionController::Base
  def index
    @categories = Category.all
    @phrases = Phrase.all
    @category = params[:category]
    @phrase = params[:phrase]
  end
end
