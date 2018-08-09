require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all 
    @@all
  end

  def songs
    @songs
  end

  def genres
    genres = []
    @songs.each{|song|
      if (genres.include?(song.genre) == false)
        genres << song.genre
      end
    }
    genres
  end

  def new_song (name, genre)
    song = Song.new(name, self, genre)

    @songs << song
    song
  end
end