class FrigosController < ApplicationController
  def new
    @frigo = Frigo.new
  end

  def create
    frigo = Frigo.create!(frigo_params)
    redirect_to root_path
  end

  def show
    @frigo = Frigo.find(params[:id])
  end

  private

  def frigo_params
    params.require(:frigo).permit(:name)
  end
end
