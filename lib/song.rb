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
    present = Song.new
    present.name = name
    present
  end
end
