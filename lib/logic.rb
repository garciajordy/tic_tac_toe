# frozen_string_literal: true

# Game logic class
class Game
  @@possible_wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
                     [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def verify
    @@possible_wins.any? do |arr|
      ((@cells[arr[0]] == @cells[arr[1]]) && (@cells[arr[0]] == @cells[arr[2]]))
    end
  end

  def full
    @cells.all?(String)
  end
end
