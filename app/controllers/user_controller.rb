class UserController < ApplicationController

  def index
    @user = User.all	
	end
  
  def show
	@users = User.find_by(id: params["id"])	
  	@loyalty = LoyaltyProgram.find_by(id: params["id"]) 
    @coupon = Coupons.where(loyaltyProgram_id: params["id"]) 
    end

end
