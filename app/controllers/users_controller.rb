class UsersController < ApplicationController
    
    def new


    end

    def create
        @user= User.create(user_params)
        if @user.password != @user.password_confirmation 
            redirect_to new_user_path
        else
            redirect_to '/'
            session[:user_id] = @user.id
        end
    end


    
end
