class LoyaltyProgramController < ApplicationController


	def index
		@loyalty = LoyaltyProgram.all
	end
		
	def show

	end

	def new
		@loyalty = LoyaltyProgram.new 
	end

	def create
		LoyaltyProgram.create(params["loyaltyProgram"])
		redirect_to users_url
	end


end
