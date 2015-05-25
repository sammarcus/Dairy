class OrdersController < ApplicationController
  require 'mandrill'

  def index
    @order = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @customer = Customer.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      Emailer.order_email(order)
      redirect_to @order
    else
      render 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:name)
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





end
