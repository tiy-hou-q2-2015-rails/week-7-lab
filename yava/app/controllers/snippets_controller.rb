class SnippetsController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params.require(:quote).permit(:author, :snippet))
    if @quote.save
      redirect_to root_path
    else
      render :new
    end
  end
end
