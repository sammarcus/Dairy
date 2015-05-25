class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end

#no view here
def new
  @topping = Topping.new
end

def create
  @topping = Topping.new(topping_params)

  if @topping.save
    redirect_to @topping
  else
    render 'new'
  end
end

def destroy
  @toppings = toppings.find(params[:id])
  @toppings.destroy

  respond_to do |format|
    format.html { redirect_to(toppings_url) }
    format.xml  { head :ok }
  end
end


  private
  def topping_params
    params.require(:topping).permit(:name)
    params.require(:topping).permit(:avatar)

  end

end
