class GigsController < ApplicationController

  def index
    @gigs = current_user.gigs
  end

  def show
    @gigs = current_user.gigs.find(params[:id])
  end

  def accept
  end

  def reject
  end

  private

  # def set_service
  #   @gig = Service.find(params[:id])
  # end

  # def dose_params
  #   params.require(:service).permit()
  # end
end
