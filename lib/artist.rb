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

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs 
    # find all songs that belongs to artist
    Song.all.select{|song| song.artist == self} 
  end

  def genres
    # finds all the genres that are associated with this artist
    songs.map {|song| song.genre }
  end

end
