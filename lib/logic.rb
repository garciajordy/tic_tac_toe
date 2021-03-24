# frozen_string_literal: true

# Game logic class
class Game
  def initialize
    @cells = [1..9]
  end

  def win
    puts 'GREAT JOB!!! YOU HAVE WON.'
  end

  # 1 | 2 | 3
  # 4 | 5 | 6
  # 7 | 8 | 9
  def logic
    array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
             [2, 5, 8], [3, 6, 9], [1, 5, 9], [7, 5, 3]]
    until i >= 8
        i = 0
        j = 0
        (@cells[array[i][j]]==@cells[i][j+1])==(@cells[array[i][j]]==@cells[i][j+2])
        
    end
    end
  end
end
# rubocop:enable
