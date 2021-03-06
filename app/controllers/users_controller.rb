class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {error: "Sorry, User does not exist"}
        end
    end

    def create
        user = User.find_by(username: params[:username])
        if user
            render json: {error: "Sorry, but #{user.username} already exists"}
        else
            new_user = User.create(user_params)
            render json: new_user
        end
        
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(user_params)
            render json: user
        else
            render json: {error: "Sorry, User does not exist"}
        end
        
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user
            user.destroy
        else
            render json: {error: "Sorry, User does not exist"}
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user
            render json: user
        else
            render json: {status: "error", code: 3000, message: "User Does Not Exist"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:display_name, :username, :password, :bio)
    end







end
