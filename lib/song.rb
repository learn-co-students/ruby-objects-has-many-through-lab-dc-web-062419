require 'pry'

class Song

    attr_accessor :artist, :name, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        self.class.all << self
        # binding.pry

    end


    def self.all
        @@all
    end



end