class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  private

  def set_services
    @service = Service.find(params[:id])
  end
end
