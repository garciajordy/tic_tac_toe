require "./lib/board.rb"

describe Board do
  describe "#verify" do
    it "it returns true if all the cells in the top horizontal line are all the same" do
      board = Board.new
      board.update(1, "X")
      board.update(2, "X")
      board.update(3, "X")
      expect(board.verify).to eql(true)
    end

    it "it returns false if all the cells in the top horizontal line are not the same" do
      board = Board.new
      board.update(1, "X")
      board.update(2, "O")
      board.update(3, "X")
      expect(board.verify).to eql(false)
    end
  end
  describe "#full" do
    it "it returns true if all cells are filled" do
      board = Board.new
      board.update(1, "X")
      board.update(2, "O")
      board.update(3, "X")
      board.update(4, "X")
      board.update(5, "O")
      board.update(6, "X")
      board.update(7, "X")
      board.update(8, "O")
      board.update(9, "X")
      expect(board.full).to eql(true)
    end

    it "it returns false if all cells are not filled" do
      board = Board.new
      board.update(1, "X")
      board.update(2, "O")
      board.update(3, "X")
      board.update(5, "O")
      board.update(6, "X")
      board.update(7, "X")
      board.update(8, "O")
      board.update(9, "X")
      expect(board.full).to eql(false)
    end
  end
end
