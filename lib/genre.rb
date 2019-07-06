require 'pry'

# require_relative "./artist.rb"
# require_relative "./song.rb"

class Genre

    attr_accessor :name, :artist, :genre

    @@all = []
    
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.collect {|song| song.artist}
    end


end