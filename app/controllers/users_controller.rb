class UsersController < ApplicationController


    def index
        users = User.all
        render json: users 
    end

    def create
        user = User.new(user_params)

        if user.valid?
            user.save 
            render json: {user: UserSerializer.new(user)}, status: :created
        else
            render json: {error: "Failed to create a user"}, status: :not_acceptable
        end
    end


    def show 
        user = current_user
        render json: UserSerializer.new(user)
    end
    

    def destroy
        user = current_user
        user.destroy 
    end



    def current_user
        user = User.find_by(id: params[:id])
    end


    private

    def user_params
        params.permit(:name, :password, :email)
    end
    


end
