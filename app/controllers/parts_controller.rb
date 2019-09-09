class PartsController < ApplicationController
    def index
        parts = Part.all
        render json: parts
    end

    def show
    end

    def create
        part = Part.find_by[:part_id]
        if part.save
            render json: part
        else
            puts "Part failed to save"
        end
    end
end
