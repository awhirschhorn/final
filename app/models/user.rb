class User < ActiveRecord::Base
	has_many :loyaltys
	has_many :coupons
	has_many :purchases

end
