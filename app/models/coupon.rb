class Coupon < ActiveRecord::Base
	belongs_to :loyalty
	belongs_to :store
	belongs_to :user
	belongs_to :purchase

end
