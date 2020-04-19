class UsersController < ApplicationController

    def index

    end
    
    def new
        @user = User.new

    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to posts_path
        else
            render :new
        end
    end



    def show
        @user =User.find(params[:id])

    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
