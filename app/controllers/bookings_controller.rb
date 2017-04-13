class BookingsController < ApplicationController
  before_action :set_service, only: [:new, :create ]
  before_action :set_booking, only: [:show, :destroy]

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
      redirect_to admin_bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = @booking.user

    @booking.destroy
    redirect_to admin_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :status, :start_time, :end_time)
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
