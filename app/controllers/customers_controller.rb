class CustomersController < ApplicationController
  def new
    @customer = Customer.new

  end

  def create
    @customer = Customer.new
  end

  def show
  end

  def index
    @customer = Customer.new

  end
end
