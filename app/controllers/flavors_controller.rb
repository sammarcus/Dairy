class FlavorsController < ApplicationController

  def index
    @flavors = Flavor.all
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

  def destroy
    @flavors = flavors.find(params[:id])
    @flavors.destroy

    respond_to do |format|
      format.html { redirect_to(flavors_url) }
      format.xml  { head :ok }
  end
end
    private
    def flavor_params
      params.require(:flavor).permit(:name, :image_url)
    end


  end
