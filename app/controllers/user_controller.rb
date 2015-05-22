class UserController < ApplicationController

  def index
    @user = User.all	
	end
  
  def show
	@user = User.find_by(id: params["id"])	
  	@loyalty = Loyalty.where(id: @user.loyalty_id) 
    @coupon = Coupon.where(id: @user.loyalty_id) 
    end



end
