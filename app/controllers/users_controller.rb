class UsersController < ApplicationController

    # Hash and array paramaters
    # GET /users?ids[]=1&ids[]=2&ids[]=3


    # /users?status=active
    def index
        if params[:status] == "active"
            @users = User.active
        else
            @users = User.inactive
    end

    # /users, data in FORM INPUT USER
    def create 
        @user = User.new(params[:user])

        if @user.save
            redirect_to @user
        else
            render "new"
        end
    end
end
