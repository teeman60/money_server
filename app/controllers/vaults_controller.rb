class VaultsController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :show]


    # def index
    #     vaults = Vault.all
    #     # byebug
    #     render json: VaultSerializer.new(vaults)
    #     # render json: vaults
    # end


    # def show 
    #     vault = Vault.find(params[:id])
    #     render json: VaultSerializer.new(vault)
    #     # render json: money
    # end


    # private

    # def vault_params
    #     params.permit(:round, :user_id, :total_amount, :user_to_withdraw)
    # end
end
