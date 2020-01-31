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
    self.all.sort 
  end
end
