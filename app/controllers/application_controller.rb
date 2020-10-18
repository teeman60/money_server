class ApplicationController < ActionController::API



    def encode_token(payload)
        JWT.encode(payload, "softwaredeveloper")
        
    end

    def logged_in?
        

        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]
        
        begin
            user_id = JWT.decode(token, "softwaredeveloper")[0]["user_id"]
            @user = User.find(user_id)
        rescue 
            @user = nil
     
        end

        render json: {error: "Please LogIn"} unless @user
      
    end



end
