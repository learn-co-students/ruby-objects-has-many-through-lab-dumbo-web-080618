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

  # def new(name, artist, genre)
  #   self.new
  # end
  #
  # def genres
  #   Genre.all
  # end

end
