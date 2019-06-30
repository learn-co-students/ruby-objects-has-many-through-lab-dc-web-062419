require 'pry'

class Genre

    attr_accessor :name, :artist, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all<< self
    end

    def self.all
        @@all
    end

    def songs
        self.all.select {|genre| genre.name}
        binding.pry
    end

    def artists
        # binding.pry
        @@all.select {|songs|  song.name == artist.name }
        # binding.pry
    end

end