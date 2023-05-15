class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
    end

    def show
    end

    def new
        render 'new', status: :unprocessable_entity
    end
end
