require 'bundler'
Bundler.require

module Concerns
  module Findable
    
    def self.find_by_name(name)
      self.all.find do |obj|
        obj.name == name
      end 
  end 

  
end 
end

require_all 'lib'

