class Purchase < ActiveRecord::Base
	belongs_to :user
	belongs_to :coupon
	belongs_to :store

end
