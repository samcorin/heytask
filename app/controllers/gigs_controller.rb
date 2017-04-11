class ServicesController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def show
  end

  def accept
  end

  def reject
  end

  private

  def set_service
    @gig = Service.find(params[:id])
  end

  # def dose_params
  #   params.require(:service).permit()
  # end
end
