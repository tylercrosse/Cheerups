class CheerupsController < ApplicationController

  def index
    @cheerups = Cheerup.all
  end

  def edit
    @cheerup = Cheerup.find(params[:id])
  end


  def create
    @cheerup = Cheerup.new(cheerup_params)

    if @cheerup.save
      redirect_to cheerups_path
    else
      render 'new'
    end
  end

  def update
    @cheerup = Cheerup.find(params[:id])

    if @cheerup.update(cheerup_params)
      redirect_to cheerups_path
    else
      render 'edit'
    end
  end


  def new
    @cheerup = Cheerup.new
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end

  def destroy
  @cheerup = Cheerup.find(params[:id])
  @cheerup.destroy

  redirect_to cheerups_path
  end


  private
  def cheerup_params
    params.require(:cheerup).permit(:title, :text)
  end
end
