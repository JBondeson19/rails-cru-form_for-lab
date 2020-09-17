class Genre < ApplicationRecord

    def self.find_genre(name)
        self.all.detect do |genre|
            genre.name == name
        end
    end
    
end
