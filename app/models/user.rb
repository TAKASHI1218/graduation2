class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, omniauth_providers: %i(google)

  has_many :blogs

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
end
