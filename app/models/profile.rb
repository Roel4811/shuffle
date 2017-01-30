class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, :age, :location, presence: true
  validates :age, :numericality => { greater_than_or_equal_to: 18  }
end
