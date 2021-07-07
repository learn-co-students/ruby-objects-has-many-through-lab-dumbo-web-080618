require "pry"
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
  end
  def songs #return an array of all the artists = to self
    #if song.artist equal and list of artist then equate it to self to give only THAT artist
    Song.all.select{|ind_song| ind_song.artist == self} #cannot iterate over class's only hashes and arrays. We use Song.all method to call on the array @@all
  end
  #The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.

  def genres
    songs.map{|song| song.genre} # giving back all the genres under that particular artist. artists can have nmany genres and calling of theirmany genres.
    # Song.all.map{|ind_song| ind_song.genre} #giving back all the different genres from the collection of song array. giving back all the genres of the songs
    # binding.pry
  end
end
