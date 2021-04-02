require_relative 'file_loader.rb'
class Linters 

    def initialize(file_name)
        @file = FileLoader.new(file_name)
        @errors = []
    end

    
end 


