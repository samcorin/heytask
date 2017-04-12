class Service < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :provider, class_name: "User"

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader
end
