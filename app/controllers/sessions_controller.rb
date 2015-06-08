class SessionsController < ApplicationController
    skip_before_action :auth 
	layout false

	def create 
    
	    @user = User.find_by(email: params["email"])
		    if @user.present?
		    	  if @user.authenticate(params["password"])
    	    		session["user_id"] = @user.id
    	   			 redirect_to root_url
    	  		else
    	    redirect_to new_session_url, alert: 'Please try again'
    	  	end
    	else
      	redirect_to new_session_url, alert: 'Please try again'
    	end

	end

	def destroy
    session["user_id"] = nil
    redirect_to root_url, notice: "Logged out"

	end



end
