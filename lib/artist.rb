class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    artist = new(name)
    artist.save
    artist
  end

  def add_song(song)

      song.artist = self uness song.artist
      songs << song
    end
  end

  def genres
    songs.collect do |song|
  end
end
