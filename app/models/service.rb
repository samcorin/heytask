class Service < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :provider, class_name: "User"

  mount_uploader :photo, PhotoUploader
end
