class VaultController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :show]


    def index
        vaults = User.all
        # byebug
        render json: VaultSerializer.new(vaults) 
    end
end
