class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
       
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :email, :first_name, :last_name))
        @user.save
        redirect_to users_path
    end
end
