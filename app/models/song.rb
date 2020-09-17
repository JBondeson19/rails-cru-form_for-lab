class Song < ApplicationRecord

 def artist
    Artist.all.detect do |artist|
        artist.id == self.artist_id
    end

 end


 def genre
    Genre.all.detect do |genre|
        genre.id == self.genre_id
    end
 end

end
