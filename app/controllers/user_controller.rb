class UserController < ApplicationController

  def index
    @user = User.all	
	end
  
  def show
	@user = User.find_by(id: params["id"])	
  	@loyalty = LoyaltyProgram.find_by(id: @user.loyaltyProgram_id) 
    @coupon = Coupon.where(id: params["id"]) 
    end



end
