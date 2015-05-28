class ContainmentsController < ApplicationController
  suckr = ImageSuckr::GoogleSuckr.new


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

def destroy
  @containments = containments.find(params[:id])
  @containments.destroy

  respond_to do |format|
    format.html { redirect_to(containments_url) }
    format.xml  { head :ok }
  end
end


  private
  def containment_params
    params.require(:containment).permit(:name)
    params.require(:containment).permit(:avatar)

  end

end
