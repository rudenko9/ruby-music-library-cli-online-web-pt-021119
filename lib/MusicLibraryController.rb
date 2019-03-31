class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    importer = MusicIMporter.new(path)
    importer.import
    
  end 
  
end 