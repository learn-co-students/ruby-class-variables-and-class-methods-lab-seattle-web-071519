class Song
    attr_accessor :name, :artist, :genre, :count

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @@count +=1
        @artist = artist
        @@artists << artist
        @@artists = @@artists
        @genre = genre
        @@genres << genre
        @@genres = @@genres
    end

    def Song.count
        return @@count
    end
    def Song.artists
        return @@artists.uniq
    end
    def Song.genres
        return @@genres.uniq
    end
    def Song.genre_count
        count = {}
        @@genres.each do |genre|
            if !!!count[genre]
                count[genre] = 1
            else
            count[genre]+=1
            end
        end
        return count
    end

    def Song.artist_count
        count = {}
        @@artists.each do |artist|
            if !!!count[artist]
                count[artist] = 1
            else
            count[artist]+=1
            end
        end
        return count

    end
end 