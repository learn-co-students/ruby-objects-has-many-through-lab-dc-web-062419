require "pry"
class Artist
    attr_reader :name, :songs
    attr_reader :genres
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @genres = []
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        created_song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
       self.songs.each {|song| @genres << song.genre}      
       @genres
    end

end