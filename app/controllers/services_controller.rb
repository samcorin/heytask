class ServicesController < ApplicationController
  before_action :set_service, only: [ :show, :destroy ]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
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

  def service_params
    params.require(:cocktail).permit(:name, :category, :description, :photo, :photo_cache, :price, :provider_id)
  end
end
