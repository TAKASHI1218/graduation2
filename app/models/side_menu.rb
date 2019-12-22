class SideMenu < ApplicationRecord
  mount_uploader :picture, ImageUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..20}
  validates :price, presence: true
  validates :price, numericality: {
            only_integer: true, greater_than_or_equal_to: 0}
  validates :kind, presence: true
  enum kind:{一品料理: 0,〆もの: 1}, _suffix: true
end
