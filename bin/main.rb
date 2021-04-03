require_relative '../lib/linters'

my_file = Linters.new('test.rb')
my_file.run_checker
