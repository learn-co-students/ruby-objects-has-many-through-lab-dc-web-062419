class Song
  @@all = []

  attr_reader :name, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    self.class.all << self
  end

  def self.all
    @@all
  end
end