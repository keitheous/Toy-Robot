require 'pry'
require_relative 'direction'
require_relative 'board'
# lib/movement.rb
class Movement
  attr_accessor :location, :max_xy
  def initialize(x, y, direction)
    @align = [x, y, direction]
    @max_xy = Board.new.set_dimensions
  end

  def forward(steps = 1)
    case @align[2] # direction
    when 'north' then @align[1] += steps if safe_move(@align[1])
    when 'south' then @align[1] -= steps if safe_move(@align[1])
    when 'east' then @align[0] += steps if safe_move(@align[0])
    when 'west' then @align[0] -= steps if safe_move(@align[0])
    end
    @align
  end

  private

  def safe_move(x_or_y_position)
    true if (x_or_y_position < @max_xy[1]) && (x_or_y_position > 0)
  end
end
