class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end
    
    def create
        song = Song.create(strong_params)
        
        if song.save
            render json: song
        else
            puts "Song failed to save"
        end
    end
    
    def show
        song = Song.find(params[:id])
        render json: song
    end

    def update
        song = Song.find(params[:id])
        song.update(strong_params)
        render json: song
    end

    def destroy
        song = Song.find(params[:id])
        song.destroy
    end

    private

    def strong_params
        params.require(:song).permit(:song_name, :song_note, :project_id)
    end


end
