class FileLoader < Linters
    attr_reader :file_path, :content, :file_lines, :errors
    def initialize(file_path)
        @file_path = file_path
        @file = file_path.to_s
        @file_lines = File.readlines(@file)
        @errors = []

    end
end