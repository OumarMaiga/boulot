class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.from_facebook(auth)
  	where(facebook_id: auth.uid).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0, 20]
  		user.skip_confirmation!
  	end
  end

  def self.from_google(auth)
  	where(google_oauth2_id: auth.uid).first_or_create do |user|
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0, 20]
  		user.skip_confirmation!
  	end
  end

end
