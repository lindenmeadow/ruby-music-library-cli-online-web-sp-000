class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist
    @genre = genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def self.create(name)
    song = new(name)
    song.save
    song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self if genre.songs.include?(self)
  end

end
