require 'pry'
# Board
class Board
  attr_accessor :max_width, :max_height
  def set_dimensions(x = 5, y = 5)
    @max_width = x - 1
    @max_height = y - 1
    [max_width, max_height]
  end
end
