class Song
    require 'pry'

    attr_accessor :name, :artist, :genre
    @@count=0
    @@genres=[]
    @@all =[]
    @@artists=[]


    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@all << self
        @@count +=1
        @@artists << self.artist
        @@genres << self.genre
    end
    
    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
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
        genre_count={}
        @@genres.each do |genre|
            if genre_count[genre] !=nil
                genre_count[genre] +=1
            else
                genre_count[genre]=1
            end
        end
        return genre_count

    end

    def self.artist_count
        artist_count={}
        @@artists.each do |artist|
            if artist_count[artist] !=nil
                artist_count[artist] +=1
            else
                artist_count[artist]=1
            end
        end
        return artist_count

    end

end



