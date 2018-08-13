require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #binding.pry
  end

  def songs
    a = Song.all.select do |song|
      song.artist == self
    end
    #binding.pry
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end

end
