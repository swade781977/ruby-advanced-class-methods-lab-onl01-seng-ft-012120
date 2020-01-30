class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create(newSong)
   newSong.Song.new 
    @@all << newSong
  end

end
