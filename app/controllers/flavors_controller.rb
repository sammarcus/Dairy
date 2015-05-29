class FlavorsController < ApplicationController
   def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
  end

  def new
  end



  def create
    @flavor = Flavor.new(flavor_params)

    @flavor.save
    redirect_to @flavor
  end

  private
  def flavor_params
    params.require(:flavor).permit(:title)
  end


end
