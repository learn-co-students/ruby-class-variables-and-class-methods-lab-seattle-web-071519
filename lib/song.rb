# require 'pry'

class Song 

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
  
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@all << self
    end 

    #method for total songs 
    #returns the total number of songs created
    def self.count
        @@count
    end 
    
    #
    def self.artists
        # self.artist.select do |song|
            @@artists.uniq

     
end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count 
        genre_hash = Hash.new(0)
        @@genres.each do |genre|
          genre_hash[genre] += 1
        end 
        genre_hash 
end 

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each do |artist|
            artist_hash[artist] += 1
        end
        artist_hash
    end 

end 

# end 


    #method for genres 

    #.genres returns array of all the genre of existing songs
    # this array is unique in that it contains no duplicate
    # youll need a class variable @@genres, set = to an empty array
    # 

  
        #method for artist 
        #returns an array of all artists of the existing songs
        #the array itself should only contain unique artists - no repeats 
        #youll need a class variable called @@artists = []
        #

 
