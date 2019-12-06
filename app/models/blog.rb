class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :picture, ImageUploader
  enum priority:{高: 0,中: 1,低: 2,なし: 3}, _suffix: true
  enum status:{未着手: 0,着手中: 1,完了: 2,なし: 3}, _suffix: true


end
