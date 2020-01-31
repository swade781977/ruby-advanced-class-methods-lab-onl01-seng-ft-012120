require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    newSong = Song.new 
    @@all << newSong
    newSong
  end
  def self.new_by_name(name)
    newSong = Song.new
    newSong.name = name
    @@all << newSong
    newSong
  end
  def self.create_by_name(name)
    newSong = Song.new
    newSong.name = name
    @@all << newSong
    newSong
  end
  def self.find_by_name(name)
    self.all.find{|song| song.name == name} 
  end
  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end
  def self.alphabetical
    @@all.map.sort
  end
  
end


song_1 = Song.create_by_name("Thriller")
song_2 = Song.create_by_name("Blank Space")
song_3 = Song.create_by_name("Call Me Maybe")
Song.all

