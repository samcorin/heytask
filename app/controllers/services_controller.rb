class ServicesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show, :index]
  before_action :set_service, only: [ :show, :destroy ]
  before_action :set_user, only: [ :new, :create ]
  before_action :set_category_list, only: [ :new ]

  def index
    # @services = Service.all
    @services = Service.where.not(latitude: nil, longitude: nil)

    @hash = set_hash(@services)

    @category = params[:category]
    @search = params[:search]

    if @search
      @services = @services.where("LOWER(name) LIKE ?", "%#{@search}%")
      @hash = set_hash(@services)
    end

    if @category
      @photo_types = {fitness: "sports", cooking: "food", people: "business", design: "fashion", transport: "transport", people: "people", gardening: "animals"}
      @photo = @photo_types[@category.to_sym] || "business"
      @services = @services.where(category: @category)
      @hash = set_hash(@services)
    end


  end

  def show
    @service = Service.find(params[:id])
    @alert_message = "You are viewing #{@service.name}"
    @service_coordinates = { lat: @service.latitude, lng: @service.longitude }
    @hash = Gmaps4rails.build_markers(@service) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.provider = @user

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

  def set_hash(services)
    return Gmaps4rails.build_markers(services) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
      marker.infowindow render_to_string(partial: "/shared/infowindow", locals: { service: service })
    end
  end

  def set_user
    @user = current_user
  end

  def service_params
    params.require(:service).permit(:name, :address, :category, :description, :photo, :photo_cache, :price, :provider_id)
  end

  def set_category_list
    @categories = ['cleaning', 'fitness', 'design', 'technical', 'making some sort of fort', 'excellence', 'justified violence', 'cooking', 'gardening' ]
  end
end
