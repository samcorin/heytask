class BookingsController < ApplicationController
  before_action :set_service, only: [:new, :create]

  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = @service
    @booking.status = "Pending"
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:title, :status)
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end
