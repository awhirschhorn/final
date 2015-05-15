class LoyaltyProgram < ActiveRecord::Base
	has_many :users
	has_many :coupons
	
end
