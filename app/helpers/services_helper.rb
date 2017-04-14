module ServicesHelper
  def picture_url(service)
    if service.photo.url
      return service.photo
    else
      return 'https://lorempixel.com/400/200/business'
    end
  end
end
