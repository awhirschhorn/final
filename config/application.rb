require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Final
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true 

    def index
    @loyalty = LoyaltyProgram.all
  end

  def new
    @newloyalty = LoyaltyProgram.new
  end

  def create
    @newloyalty2 = LoyaltyProgram.create(name: params["store"]["program"]["program_num"])
    redirect_to index_url 
    end

    def edit
        @loyalty = LoyaltyProgram.find_by(id: params["id"])
    end 

    def update
        @loyalty = LoyaltyProgram.find_by(id: params["id"])
        @loyalty.update(params["id"])
        redirect_to index_url
    end

    def destroy
        @loyalty = LoyaltyProgram.find_by(id: params["id"])
        
    end 
  end
end
