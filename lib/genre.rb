require 'pry'

class Genre

  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    new_song = Song.new(name, artist)
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

end
