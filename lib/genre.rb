class Genre
  @@all = []
  @@songs = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,artist)
    song = Song.new(name,artist,self)
    @@songs << song
  end

  def songs
    @@songs.select do |x|
      x.genre == self
    end

    def artists
      songs.map do |x|
        x.artist
      end
    
