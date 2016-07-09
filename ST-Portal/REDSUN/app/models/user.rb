class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :token_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  before_save :ensure_authentication_token

	def skip_confirmation!
	  self.confirmed_at = Time.now
	end
end
