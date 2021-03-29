require './lib/board'
require './lib/user'

describe Board do
  describe '#verify' do
    it 'returns true if the cells in the top horizontal line are the same' do
      board = Board.new
      board.update(1, 'X')
      board.update(2, 'X')
      board.update(3, 'X')
      expect(board.verify).to eql(true)
    end

    it 'returns false if the cells in top horizontal line are not the same' do
      board = Board.new
      board.update(1, 'X')
      board.update(2, 'O')
      board.update(3, 'X')
      expect(board.verify).to eql(false)
    end
  end
  describe '#full' do
    it 'it returns true if all cells are filled' do
      board = Board.new
      board.update(1, 'X')
      board.update(2, 'O')
      board.update(3, 'X')
      board.update(4, 'X')
      board.update(5, 'O')
      board.update(6, 'X')
      board.update(7, 'X')
      board.update(8, 'O')
      board.update(9, 'X')
      expect(board.full).to eql(true)
    end

    it 'it returns false if all cells are not filled' do
      board = Board.new
      board.update(1, 'X')
      board.update(2, 'O')
      board.update(3, 'X')
      board.update(5, 'O')
      board.update(6, 'X')
      board.update(7, 'X')
      board.update(8, 'O')
      board.update(9, 'X')
      expect(board.full).to eql(false)
    end
  end

  describe '#valid' do
    it 'returns true if number is between 1-9' do
      board = Board.new
      expect(board.valid(5)).to eql(true)
    end
    it 'it returns false if the number is not between 1-9' do
      board = Board.new
      expect(board.valid(10)).to eql(false)
    end
    it 'it returns false if the cell is already filled' do
      board = Board.new
      board.update(5, 'X')
      expect(board.valid(5)).to eql(false)
    end
  end

  describe '#update' do
    it 'returns true if the cell update' do
      board = Board.new
      expect(board.update(5, 'X')).to eql(true)
    end
  end
end

describe User do
  describe '#initialize' do
    it "it adds 's if the name doesn't end with s" do
      user = User.new('John')
      expect(user.name).to eql("John's")
    end
    it "it does not add 's if the name ends with s" do
      user = User.new('Jules')
      expect(user.name).to eql('Jules')
    end
  end
end
