class Linters
    attr_reader :file_path, :content, :file_lines, :errors
    def initialize(file_path)
        @file_path = file_path
        @file_lines = File.readlines(@file)
        @errors = []
    end

    def trailing_white_spaces
        
        @file_lines.each_with_index do |line,idx|
            if line[-2] == ' '  
                @errors << "You have a trailing white space on line #{idx + 1}" 
            end
        end
    end

    def count_ends
        special_words = ['def','do','if']
        count_start = 0
        count_end = 0
        @file_lines.each do |line|
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





