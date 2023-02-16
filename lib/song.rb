require "pry"

class Song
   

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
        
    end
    

    def self.artists
        @@artists.uniq
        #empty obj returns nil . new create a new object

    end

    def self.genre_count
        artgenre = Hash.new(0)
        @@genres.map do |genre|
            artgenre[genre] += 1
        end
        artgenre
        
    end
    def self.artist_count
        artobj = Hash.new(0)
        @@artists.map do |artist|
            artobj[artist] += 1
        end
        artobj
    end

    

end
ninety_nine_problems = Song.new("99p", "Jay", "rap")
puts ninety_nine_problems.name
puts ninety_nine_problems.artist
puts ninety_nine_problems.genre
# puts Song.genres
#puts Song.count
#inding.pry