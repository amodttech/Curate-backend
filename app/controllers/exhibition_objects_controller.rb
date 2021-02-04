class ExhibitionObjectsController < ApplicationController
    def index
        exhibition_objects = ExhibitionObject.all
        render json: exhibition_objects
    end

    def show
        exhibition_object = ExhibitionObject.find_by(id: params[:id])
        if exhibition_object
            render json: exhibition_object
        else
            render json: {error: "Sorry, Exhibition Object does not exist"}
        end
    end

    def create
        # exhibition_object = ExhibitionObject.find_by(art_object_id: params[:art_object_id])
        # if exhibition_object
        #     render json: {error: "Sorry, but #{exhibition_object.art_object_id} already exists"}
        # else
            new_exhibition_object = ExhibitionObject.create(exhibition_object_params)
            render json: new_exhibition_object
        # end
    end

    def update
        exhibition_object = ExhibitionObject.find_by(id: params[:id])
        if exhibition_object
            exhibition_object.update(exhibition_object_params)
            render json: exhibition_object
        else
            render json: {error: "Sorry, Exhibition Object does not exist"}
        end
    end

    def destroy
        exhibition_object = ExhibitionObject.find_by(id: params[:id])
        if exhibition_object
            exhibition_object.destroy
        else
            render json: {error: "Sorry, Exhibition Object does not exist"}
        end
    end

    private

    def exhibition_object_params
        params.permit(:art_object_id, :exhibition_id, :order_number)
    end
end
