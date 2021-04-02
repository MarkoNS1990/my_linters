class FileLoader
    def initialize(file_name)
        @file_name = file_name
        @content = File.readLines(@file_name)
    end
end