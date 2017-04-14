module ServicesHelper
  def picture_url(service)
    if service.photo.url
      return service.photo
    else
      # WE SHOULD REMOVE THAT AT SOME POINT
      counter = rand(100)
      return "https://unsplash.it/400/300?image=#{counter}"
    end
  end
end
