module UsersHelper
  def user_avatar_url(user)
    if user.profile_photo.present?
      user.profile_photo.url
    else
      user.facebook_picture_url || "http://placehold.it/30x30"
    end
  end
end
