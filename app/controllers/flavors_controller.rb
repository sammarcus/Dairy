class FlavorsController < ApplicationController
  # showcase for flavors
  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find(params[:id])
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.new(flavor_params)

    if @flavor.save
      redirect_to @flavor
    else
      render 'new'
    end
  end


  private
  def flavor_params
    params.require(:flavor).permit(:name)
  end

end

