class Artist < ApplicationRecord

    def self.find_artist(name)
        
        self.all.detect do |artist|
            artist.name == name
        end

    end
end
