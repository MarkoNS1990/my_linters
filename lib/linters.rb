require_relative 'file_loader.rb'
class Linters 

    def initialize(file_name)
        @content = FileLoader.new(file_name)
        @errors = []
    end

    
    
    def trailing_white_spaces
        @content.file_lines.each_with_index do |line,idx|
            if line[-2] == ' '  @errors << "You have a trailing white space on line #{idx + 1}" 
            end
        end
    end

end 


