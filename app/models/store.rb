class Store < ActiveRecord::Base
	has_many :purchases
	has_many :users
end
