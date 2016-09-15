require 'pry'

# Board
class Board
  attr_accessor :board_width, :board_height
  def set_dimensions(x = 5, y = 5)
    @board_width = (0...x)
    @board_height = (0...y)

    [board_width, board_height]
    # binding.pry
  end
end

# Board.new.set_dimensions
