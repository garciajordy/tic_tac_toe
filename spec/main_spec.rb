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
end
