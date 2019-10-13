class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@all << self
  end

  def self.all
    @@all 
  end

  # song belongs to aritst 
  # song belongs to genre

  # aritst has many songs
  # genre has many songs

  # artist has many genres through songs
  # genre has many artist though songs

end
