class Drink < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..20}
  validates :price, presence: true
end
