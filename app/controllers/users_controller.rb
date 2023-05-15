class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new
        render 'new', status: :unprocessable_entity
    end
end
