class Song
attr_reader :song, :artist, :genre
attr_writer :artist
@@all = []
def initialize (name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre

@@all << self
end

def self.all
  @@all
end

end
