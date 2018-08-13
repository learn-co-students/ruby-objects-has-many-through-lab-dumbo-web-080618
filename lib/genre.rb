require "pry"
class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << name
  end

  #a class method .all that lists each genre in the class variable.
  def self.all
    @@all # list everything within the array

  end

  #a class method .all that lists each genre in the class variable.
  def new_song(name, artist)
    Song.new(name, artist, self) #self refers to Genre class we are already in
  end

  def songs
    Song.all.select{|ind_song| ind_song.genre == self} # call on song method and go through indi songs and their genres and equate that to self which is genres
  end

  #The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
  def artists
    songs.map{|ind_artist| ind_artist.artist}
    # binding.pry
  end
end
