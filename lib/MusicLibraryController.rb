class MusicLibraryController
  attr_accessor :path 
  def initialize(path = "./db/mp3s")
    importer = MusicIMporter.new(path)
    importer.import
    
  end 
  
end 