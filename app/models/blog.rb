class Blog < ApplicationRecord

  validates :title, presence: true
  validates :title, length:{in:1..20}
  validates :content, presence: true
  validates :content, length:{in:1..50}
  validate :visitday_cannot_be_in_the_pastday
  validates :status, presence: true

  def visitday_cannot_be_in_the_pastday
    if visit_date.present? && visit_date < Date.today
      errors.add(:visit_date, "過去の日は入力できません。")
    end
  end


  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :picture, ImageUploader
  enum status:{緊急: 0,とても重要: 1,重要: 2,ふつう: 3, いつでもよい: 4}, _suffix: true



end
