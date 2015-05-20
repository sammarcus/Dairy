class OrdersController < ApplicationController
  require 'mandrill'

  def index
    @order = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
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




# m = Mandrill::API.new
# message = {
#  :subject=> "Claire, you have a new order!",
#  :from_name=> "Your name",
#  :text=>"New Order!",
#  :to=>[
#    {
#      :email=> "recipient@theirdomain.com",
#      :name=> "Recipient1"
#    }
#  ],
#  :html=>"<html><h1>New Order! <strong>New Order!</strong></h1></html>",
#  :from_email=>"sender@yourdomain.com"
# }
# sending = m.messages.send message
# puts sending

end
