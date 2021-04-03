class Linters
    attr_reader :file_path, :content, :file_lines, :errors
    def initialize(file_path)
        @file_path = file_path
        @file_lines = File.readlines(@file_path)
        @errors = [] # Array for storing all errors
    end

    # check all methods
    def run_checker
        trailing_white_spaces
        count_ends
        empty_line
    end

    def trailing_white_spaces
        
        @file_lines.each_with_index do |line,idx|
            if line[-2] == ' '  
                @errors << "You have a trailing white space on line #{idx + 1}" 
            end
        end
    end

    def count_ends
        special_words = ['def','do','if','class']
        count_start = 0
        count_end = 0
        @file_lines.each_with_index do |line,idx|
            special_words.each do |word|
                if line.split(' ').include?(word)
                    count_start += 1
                elsif line.strip == 'end'
                    count_end += 1
                end   
            end
             
        end 
        if count_start < count_end
            @errors << 'You have an extra "end" in your code, please remove it'
        elsif count_start > count_end
            @errors << 'You are missing "end" in your code'
        end
    end

    def empty_line
        @file_lines.each_with_index do |line,idx|
            if line.strip.empty?
                @errors << "You have an empty line on line #{idx+1}, please remove it"
            end
        end
    end

    
end 


fdx = Linters.new('test.rb')
fdx.run_checker
p fdx


