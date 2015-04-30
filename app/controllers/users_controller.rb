class UsersController < ApplicationController

  def index
    @users = User.all	
	end
  
  def show
  	@loyalty = LoyaltyProgram.find_by(id: params["id"]) 
    @coupon = Coupons.where(LoyaltyProgram_id: params["id"]) 
    end

end
