class ContainmentsController < ApplicationController
  def index
    @containments = Containment.all
  end

#no view for this
  def new
    @containment = Containment.new
  end

  def create
    @containment = Containment.new(containment_params)

    if @containment.save
      redirect_to @containment
    else
      render 'new'
    end
  end


  private
  def containment_params
    params.require(:containment).permit(:name)
  end

end
