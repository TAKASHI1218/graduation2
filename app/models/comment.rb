class Comment < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  validates :content, presence: true
  validates :content, length:{in:1..100}

end
