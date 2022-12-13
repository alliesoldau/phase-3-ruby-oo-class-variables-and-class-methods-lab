class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
        @@count += 1
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
        @@genres.each do |genre|
            if @@genre_count[genre]
                @@genre_count[genre] += 1
            else
                @@genre_count[genre] = 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |artist|
            if @@artist_count[artist]
                @@artist_count[artist] += 1
            else
                @@artist_count[artist] = 1
            end
        end
        @@artist_count
    end
end

# puts ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# puts frog_song = Song.new("Ribbit", "Freddie", "folk")
# puts frog_song = Song.new("Croak", "Buddy", "folk")
# puts frog_song = Song.new("Sing", "Freddie", "country")
# puts ninety_nine_problems.name
# puts ninety_nine_problems.artist
# puts ninety_nine_problems.genre
# puts Song.count
# puts Song.genres
# puts Song.artists
# puts Song.genre_count
# puts Song.artist_count