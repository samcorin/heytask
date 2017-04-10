class ServicesController < ApplicationController
  before_action :set_service, only: [ :show, :destroy ]

  def index
    @services = Service.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  # def dose_params
  #   params.require(:service).permit()
  # end
end
