class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :email, uniqueness: true

  validates :name,  presence: true, length: { maximum: 10 }
  validates :email, presence: true, length: { maximum: 30 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook google]
  has_many :blogs
  has_many :comments, through: :blogs


  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)
    puts '**********'
    puts auth.info
    puts '**********'

    unless user
      user = User.new(name: auth.info.name,
                      email: auth.info.email,
                      provider: auth.provider,
                      uid:      auth.uid,
                      password: Devise.friendly_token[0, 20],
                                 )
    end
    user.save
    user
  end



  def self.find_for_facebook(auth)
    user = User.find_by(email: auth.info.email)
    puts '**********'
    puts auth.info
    puts '**********'

    unless user
      user = User.new(name: auth.info.name,
                      email: auth.info.email,
                      provider: auth.provider,
                      uid:      auth.uid,
                      password: Devise.friendly_token[0, 20],
                                 )
    end
    user.save
    user
  end
end
