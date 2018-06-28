class Artist
  @@all = []
  @@songs = []
  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_song(song_name,genre)
  song = Song.new(song_name,self,genre)
  @@songs << song
end

def songs
  @@songs.select do |x|
    x.artist == self
  end

def genres
  songs.map do |x|
    song.genre
  end
