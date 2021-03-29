require "./lib/board.rb"

describe Board do
  describe "#verify" do
    it "it returns true if the top horizontal line all the same" do
      board = Board.new
      board.update(1, "X")
      board.update(2, "X")
      board.update(3, "X")
      expect(board.verify).to eql(true)
    end
  end
end
