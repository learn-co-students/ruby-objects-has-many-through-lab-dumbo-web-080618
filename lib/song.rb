class Song
  attr_reader :name,  :genre
  attr_accessor :artist
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    genre.songs << self
    @@all << self
  end

  def self.all 
    @@all
  end

  def artist
    @artist
  end

  def genre  
    @genre
  end

end