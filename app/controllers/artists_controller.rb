class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end
    
    def create
        artist = Artist.create(name: params[:name],
                                bio: params[:bio])
        byebug
        redirect_to artist_path(artist.id)
    end

    def edit 
    end

    def update 
    end

end
