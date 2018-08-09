class Genre
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song.genre = self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
