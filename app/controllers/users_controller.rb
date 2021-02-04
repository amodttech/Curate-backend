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
            user = user.create(user_params)
        end
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(user_params)
        else
            render json: {error: "Sorry, User does not exist"}
        end
        render json: user
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
        user = User.first
        render json: user
    end

    private

    def user_params
        params.permit(:display_name, :username, :password, :bio)
    end







end
