require "pry"

class Genre

  attr_reader :name

  def initialize(name)
    @name = name
    @song = []
  end

  def songs
    Song.all.select do |song|
    song.genre == self
    end

  end

  def artists
    songs.collect do |songs|
      songs.artist
    end
  end

end
