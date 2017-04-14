class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :accept, :reject]

  def index
    @gigs = current_user.gigs
  end

  def show
  end

  def accept
    @gig.status = "Accepted"
    @gig.save
    redirect_to :back
  end

  def reject
    @gig.status = "Rejected"
    @gig.save
    redirect_to :back
  end

  private

  def set_gig
    @gig = Booking.find(params[:id])
  end

  # def dose_params
  #   params.require(:service).permit()
  # end
end
