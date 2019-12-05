require 'devise'
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :participations
  has_many :groups, through: :participations

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
      print(data)
      user = User.create(first_name: data['first_name'],
        email: data['email'],
        password: Devise.friendly_token[0,20],
        last_name: data['last_name']
      )
    end
    user
  end
end
