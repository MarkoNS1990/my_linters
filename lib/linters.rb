require_relative 'file_loader.rb'
class Linters 

    attr_reader :content, :errors

    def initialize(file_path)
        @content = FileLoader.new(file_path)
        @errors = []
    end

    def trailing_white_spaces
        
        @content.file_lines.each_with_index do |line,idx|
            if line[-2] == ' '  
                @errors << "You have a trailing white space on line #{idx + 1}" 
            end
        end
    end

    def count_ends
        special_words = ['def','do','if']
        count_start = 0
        count_end = 0
        @content.file_lines.each do |line|
            if special_words.inlcude?(line.split(' '))
                count_start += 1
            elsif line.strip == 'end'
                count_end += 1
            end    
        end 
        if count_start < count_end
            @errors << 'You have extra "end" somewhere'
        elsif count_start > count_end
            @errors << 'You are missing "end"'
        end
    end

end 

my_linter = Linters.new('test.rb')
my_linter.trailing_white_spaces



