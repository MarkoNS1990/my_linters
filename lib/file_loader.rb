class FileLoader < Linters
    attr_reader :file_path, :content
    def initialize(file_path)
        @file_path = file_path
        @file = file_path.to_s
        @file_lines = File.readlines(@file)
    end
end