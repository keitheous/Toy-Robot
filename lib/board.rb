# lib/board.rb
class Board
  def set_dimensions(x = 5, y = 5)
    [x - 1, y - 1] # max_width, max_height
  end
end
