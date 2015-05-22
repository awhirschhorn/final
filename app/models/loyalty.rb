class Loyalty < ActiveRecord::Base
	has_many :users
	belongs_to :store
	has_many :purchases

end
