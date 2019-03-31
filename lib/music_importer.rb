class MusicImporter
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    
  end 


  def files 
    Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{path}/", "")}
  end 
    
    def import
      Song.new_from_filename(file_name).tap {|song| song.save}
    end 
end