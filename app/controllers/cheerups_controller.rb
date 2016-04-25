class CheerupsController < ApplicationController


  def create
    @cheerup = Cheerup.new(params[:cheerup])

    @cheerup.save
    redirect_to @cheerup
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end

  def new
  end


  private
  def cheerup_params
    params.require(:cheerup).permit(:title, :text)
  end
end
