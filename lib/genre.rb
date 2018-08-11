require 'pry'

class Genre
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    newly_made_song = Song.new(name, artist, self)
  end

  def songs
    Song.all.map do |song|
      if song.genre == self
        song
      end
    end
  end

  def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end
  end
end
