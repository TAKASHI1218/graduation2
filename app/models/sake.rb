class Sake < ApplicationRecord
  mount_uploader :picture, ImageUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..25}
  validates :price, absence: true
end
