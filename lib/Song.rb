class Song
  
  attr_accessor :name, :artist, :genre
  
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist=(artist)
    self.genre=(genre)
    end
    
    def artist=(artist)
      @artist = artist 
      artist.add_song(self) unless artist.nil?
    end 
    
  @@all = []
  
  def genre=(genre)
    @genre = genre 
    genre.songs << self unless genre.nil? || genre.songs.include?(self)
    
    
  end 
  
  def self.all 
    @@all
  end 
  
  def self.destroy_all
    @@all = []
  end 
  
  def save
    @@all << self
  end 
  
  def self.create(name)
  song = self.new(name)
  song.save
  song
  end 
  
  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end 
    
   def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create(name) 
   end 

def self.new_from_filename(file_name)
    
    
end 

def self.create_from_filename(name)
   
   @@all << self.new_from_filename(name)
end 


end


