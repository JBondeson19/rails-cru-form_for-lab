class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def new
       @song = Song.new
    end
    
    def create
        @artist = Artist.find_or_create_by(name: params[:song][:artist])
        @genre = Genre.find_or_create_by(name: params[:song][:genre])


        song = Song.find_or_create_by(params_limiter(:name, :artist_id, :genre_id)
        )
        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(params_limiter(:name, :artist_id, :genre_id))
        redirect_to song_path(song)
    end

    private

    def params_limiter(*args)
        params.require(:song).permit(*args)
    end

end
