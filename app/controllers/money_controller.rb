class MoneyController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :show]

    def index
        # moneys = Money.all
        # # byebug
        # render json: MoneySerializer.new(moneys) 
    end


    def show 
        money = Money.find(params[:id])
        render json: MoneySerializer.new(money)
        # render json: money
    end


    private

    def money_params
        params.permit(:round, :amount, :user_id, :vault_id, :date_deposited)
    end

end
