class Genre
  @@all = []
  attr_reader :name
  attr_accessor :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    artists = []
    @songs.each{|song|
      if (artists.include?(song.artist) == false)
        artists << song.artist
      end
    }
    artists
  end
end