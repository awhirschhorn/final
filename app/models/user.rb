class User < ActiveRecord::Base
	has_many :loyalties
	has_many :coupons
	has_many :purchases

end
