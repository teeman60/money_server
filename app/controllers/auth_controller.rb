class AuthController < ApplicationController

    
    
    def create 
            user = User.find_by(username: params[:username])
            if user && user.authenticate(params[:password])
                render json: {username: user.username, token: encode_token({user_id: user.id}), id: user.id}
            else
                render json: {error: "invalid username and/or password"}
            end
    end

end
