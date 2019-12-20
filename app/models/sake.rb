class Sake < ApplicationRecord
  mount_uploader :picture, ImageUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..25}
  validates :price, absence: true
 enum kind:{一列目: 0,二列目: 1,三列目: 2,四列目: 3}, _suffix: true
end
