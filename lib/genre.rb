class Genre
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @artists = []
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| self == song.genre}
    end

    def artists
        self.songs.each {|song| @artists << song.artist}
        @artists
    end
end