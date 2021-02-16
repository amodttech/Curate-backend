class ArtObjectsController < ApplicationController
    def index
        art_objects = ArtObject.all
        render json: art_objects
    end

    def show
        art_object = ArtObject.find_by(id: params[:id])
        if art_object
            render json: art_object
        else
            render json: {error: "Sorry, Art Object does not exist"}
        end
    end

    def create
        art_object = ArtObject.find_by(met_id: params[:met_id])
        if art_object
            render json: art_object
        else
            new_art_object = ArtObject.create(art_object_params)
            render json: new_art_object
        end
    end

    def update
        art_object = ArtObject.find_by(id: params[:id])
        if art_object
            art_object.update(art_object_params)
            render json: art_object
        else
            render json: {error: "Sorry, Art Object does not exist"}
        end
    end

    def destroy
        art_object = ArtObject.find_by(id: params[:id])
        if art_object
            art_object.destroy
        else
            render json: {error: "Sorry, Art Object does not exist"}
        end
    end

    private

    def art_object_params
        params.permit(:met_id, :title, :artist, :date, :origin, :image)
    end
end
