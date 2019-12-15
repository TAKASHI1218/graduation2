class Drink < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length:{in:1..20}
  validates :price, presence: true
  validates :price, numericality: {
            only_integer: true, greater_than_or_equal_to: 0}
  enum kind:{ドリンク: 0,ウイスキー、ハイボール: 1,プレミアム焼酎ハイボール: 2,サワー、お茶ハイ: 3, その他: 4}, _suffix: true
end
