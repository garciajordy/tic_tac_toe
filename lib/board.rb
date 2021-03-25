# frozen_string_literal: true

require_relative 'logic'
# Board class to create a board
class Board < Game
  def display
    print " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} \n",
          "---+---+---\n",
          " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} \n",
          "---+---+---\n",
          " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} \n"
  end

  def valid(num)
    num.between?(1, 9) && @cells[num - 1].class != String
  end

  def update(num, mark)
    @cells[num - 1] = mark
  end
end
