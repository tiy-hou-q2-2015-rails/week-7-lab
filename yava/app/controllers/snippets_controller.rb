class SnippetsController < ApplicationController

  def index
    @quotes = Quote.all
    @quote = Quote.new
  end

  def new
    @quote = Quote.new
  end

  def create
    @quotes = Quote.all
    @quote = Quote.new(params.require(:quote).permit(:author, :snippet))
    @quote.save

  end

  def destroy_all
    Quote.destroy_all
    @quotes = Quote.all
  end
end
