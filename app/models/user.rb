class User < ActiveRecord::Base
	has_many :loyaltyPrograms
	has_many :coupons
	has_many :transactions

end
