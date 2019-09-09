class ArtistsController < ApplicationController
    def index
        artists = Artist.all
        render json: artists
    end

    def create
        artist = Project.create(strong_params)
        if artist.save
            render json: artist
        else
            puts "Artist failed to save"
        end
    end

    def show
        artist = Artist.find(params[:id])
        render json: artist
    end

    def update
        artist = Artist.find(params[:id])
        artist.update(strong_params)
        render json: artist
    end

    def destroy
        artist = Artist.find(params[:id])
        artist.destroy
    end

    private

    def strong_params
        params.require(:artist).permit(:artist_name)
    end

end
