class PartsController < ApplicationController
    def index
        parts = Part.all
        render json: parts
    end

    def show
        part = Part.find(params[:id])
        render json: part
    end
    
    def create
        part = Part.create(strong_params)
        if part.save
            render json: part
        else
            puts "Part failed to save"
        end
    end
    
    def update
        part = Part.find(params[:id])
        part.update(strong_params)
        render json:part
    end

    def destroy
        part = Part.find(params[:id])
        part.destroy
    end

    private

    def strong_params
        params.require(:part).permit(:part_name, :part_note, :song_id)
    end

end
