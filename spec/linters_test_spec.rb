require_relative '../lib/linters'
describe Linters do
  describe '#white_trailing_space' do
    it 'trailing white space should be removed' do
      file = Linters.new('test.rb')
      file.run_checker
      expect(file.errors[0]).to eql('You have a trailing white space on line 1')
    end
  end

  describe '#count_ends' do
    it 'End keyword not matching any opening block' do
      file = Linters.new('test.rb')
      file.run_checker
      expect(file.errors[1]).to eql('You have an extra "end" in your code, please remove it')
    end
  end

  describe '#empty_line' do
    it 'Empty line in code' do
      file = Linters.new('test.rb')
      file.run_checker
      expect(file.errors[2]).to eql('You have an empty line on line 3, please remove it')
    end
  end
end
