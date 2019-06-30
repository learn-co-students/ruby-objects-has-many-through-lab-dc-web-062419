require 'pry'
class Artist

attr_accessor :name, :songs, :new_song, :genre, :artist
    
@@all = []


def initialize(name)
    @name = name
    @@all << self
end

  def self.all
    @@all
  end


def new_song(song_name, genre)
# binding.pry
a =  Song.new(song_name, self, genre)  
@@all << a
    # binding.pry
end

def songs
# binding.pry   
    Song.all.select do |song| 
        song.artist == self
        # binding.pry
    end
end

  def self.all
    @@all
  end

end