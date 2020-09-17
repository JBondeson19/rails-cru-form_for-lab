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


        song = Song.find_or_create_by(name: params[:song][:name],
                                       artist_id: @artist.id,
                                       genre_id: @genre.id
        )
        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(name: params[:song][:name])
        redirect_to song_path(song)
    end

end
