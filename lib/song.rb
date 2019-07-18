require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

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

    def self.artists
        arr = []
        @@artists.each do |artist|
            if !arr.include?(artist)
                arr << artist
            end
        end
        arr
    end
    
    def self.genres
        arr = []
        @@genres.each do |genre|
            if !arr.include?(genre)
                arr << genre
            end
        end
        arr
    end
    
    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash.include?(genre)
                genre_hash[genre] += 1
            else 
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end
    
    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash.include?(artist)
                artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end

end

brightside = Song.new("Mr. Brightside", "The Killers", "pop")
hunger = Song.new("Hunger", "Florence", "alt")
revenge = Song.new("The Mariner's Revenge Song", "The Decemberists", "alt")
Song.genre_count

