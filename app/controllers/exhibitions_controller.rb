class ExhibitionsController < ApplicationController


    def index
        exhibitions = Exhibition.all
        render json: exhibitions
    end

    def show
        exhibition = Exhibition.find_by(id: params[:id])
        if exhibition
            render json: exhibition
        else
            render json: {error: "Sorry, exhibition does not exist"}
        end
    end

    def create
        exhibition = Exhibition.find_by(name: params[:name])
        if exhibition
            render json: {error: "Sorry, #{exhibition.name} already exists."}
        else
            new_exhibition = Exhibition.create(exhibition_params)
            render json: new_exhibition
        end
    end

    def update
        exhibition = Exhibition.find_by(id: params[:id])
        if exhibition
            exhibition.update(exhibition_params)
            render json: exhibition
        else
            render json: {error: "Sorry, exhibition does not exist"}
        end
    end

    def destroy
        exhibition = Exhibition.find_by(id: params[:id])
        if exhibition
            exhibition.destroy
        else
            render json: {error: "Sorry, exhibition does not exist"}
        end
    end

    private

    def exhibition_params
        params.permit(:user_id, :name, :description, :theme)
    end
end
