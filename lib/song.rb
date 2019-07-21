class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @genre = genre
        @name = name
        @artist = artist
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
    end

    def self.genre_count
        #return a hash with genres as keys
        genre_hash = Hash.new(0)
        @@genres.each do |genre|
            genre_hash[genre] += 1
        end
        genre_hash
        #
        #fill value of keys with count of each genre
    end

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each do |artist|
            artist_hash[artist] += 1
        end
        artist_hash
    end

end




