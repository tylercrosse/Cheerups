class CheerupsController < ApplicationController
#   validates :title, presence: true,
#                     length: { minimum: 1, maximum: 140 }
# end

  def index
    @cheerups = Cheerup.all
  end


  def create
    @cheerup = Cheerup.new(cheerup_params)

    @cheerup.save
    redirect_to cheerups_path
  end

  def new
    @cheerup = Cheerup.new
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end


  private
  def cheerup_params
    params.require(:cheerup).permit(:title, :text)
  end
end
