class User < ActiveRecord::Base

	validates :first_name, presence: true
	validates :last_name, presence: true 
	validates :email, presence: true
	validates :password, presence: true
	has_secure_password

	has_many :loyaltys
	has_many :coupons
	has_many :purchases

end
