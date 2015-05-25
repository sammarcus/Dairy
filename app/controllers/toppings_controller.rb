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


  private
  def topping_params
    params.require(:topping).permit(:name)
  end

end
