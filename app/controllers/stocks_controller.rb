class StocksController < ApplicationController
  def new
    @stock = Stock.new
    @frigo = Frigo.find(params[:frigo_id])
  end

  def create
    stock = Stock.new
    stock.quantity = stock_params[:quantity]
    stock.ingredient = Ingredient.find(stock_params[:ingredient])
    stock.frigo = Frigo.find(params[:frigo_id])
    stock.save!
    redirect_to frigo_path(stock.frigo)
  end

  private

  def stock_params
    params.require(:stock).permit(:quantity, :ingredient)
  end
end
