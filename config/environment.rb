require 'bundler'
Bundler.require

module Concerns
  module Findable
    
    def self.find_by_name
      self.all.class.find do |song|
        song.name == name
      end 
  end 
  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end 
  
  
  end 
end

require_all 'lib'

