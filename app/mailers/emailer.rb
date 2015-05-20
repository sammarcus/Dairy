class Emailer < ApplicationMailer

    # send a new order email to master claire, pass in the order object
  def order_email(order)
    @order = order
    mail( :to => GMAIL_SAMPLE,
    :subject => 'Claire, you have a new order!' )
  end

end
