class Food < ApplicationRecord
  mount_uploader :picture, ImageUploader

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..10}
  validates :price, presence: true
  validates :price, numericality: {
            only_integer: true, greater_than_or_equal_to: 0}

end
