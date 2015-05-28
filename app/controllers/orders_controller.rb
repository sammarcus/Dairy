require 'pry'
class OrdersController < ApplicationController
  require 'mandrill'
  # order = Order::OrdersController.new

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @order.build_customer
    # @order.build_containment
    # @order.build_flavor
    # @order.toppings.build
  end


  def show
    @order = Order.find(params[:id])
  end


  def create
    @order = Order.new(order_params)
    @customer = Customer.new

    if @order.save
      # Emailer.order_email(order)
      redirect_to order_path@order
    else
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(
      :customer_id,
      # :containtment_id,
      # :flavor_id,
      # :topping_id,
      customer_attributes: [ :id, :name, :address, :phone, :email]#,
      # containments_attributes: [:id, :name]
      # flavors_attributes: [:id, :name],
      # toppings_attributes: [:id, :name],
      )
  end

end




# bring out params
# render plain: params[:order].inspect

# Mailer
#     # Create the order from params
#     @customer = customer.new(params[:customer])
#     if @customer.save
#       # Delivers new order email possibly?
#       emailer.order_email(@customer).deliver
#       redirect_to(@customer, :notice => 'New Order')
#     else
#       render :action => 'new'
#     end






