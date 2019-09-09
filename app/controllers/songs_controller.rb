class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end

    def show
    end

    def create
        song = Song.find_by[:song_id]
        if song.save
            render json: song
        else
            puts "Song failed to save"
        end
    end

    
end
