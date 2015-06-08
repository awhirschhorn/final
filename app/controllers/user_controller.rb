class UserController < ApplicationController

	skip_before_action :auth, only: [:new, :create]

  def index
    @user = User.all	
	end
  
  def show
	@user = User.find_by(id: params["id"])	
    end

    def new
    	@user = User.new

    end

  def create
    @user = User.create(params["user"])
    if @user.valid?
      redirect_to users_path
    else
      render "new"
    end
  end

end
