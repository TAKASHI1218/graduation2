class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :picture, ImageUploader
  enum priority:{高: 0,中: 1,低: 2,なし: 3}, _suffix: true
  enum status:{とても満足: 0,満足: 1,普通: 2,不満: 3, とても不満: 4}, _suffix: true


end
