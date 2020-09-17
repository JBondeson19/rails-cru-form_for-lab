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
        @artist = Artist.find_artist(params[:song][:artist])
        @genre = Genre.find_genre(params[:song][:genre])
    

        song = Song.find_or_create_by(name: params[:song][:name],
                                       artist_id: @artist.id,
                                       genre_id: @genre.id
        )
        redirect_to song_path(song)
    end

    def edit 
    end

    def update 
    end

end
