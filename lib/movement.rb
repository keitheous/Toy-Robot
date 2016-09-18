# require 'pry'
require_relative 'direction'
require_relative 'board'
# lib/movement.rb
class Movement
  attr_accessor :align, :max_xy
  def initialize(x, y, direction)
    @max_xy = Board.new.set_dimensions
    @align = [x, y, direction]
    # binding.pry
  end

  def forward(steps = 1)
    case @align[2] # direction
    when 'north' then @align[1] += steps if @align[1] < @max_xy[1] # y+
    when 'south' then @align[1] -= steps if @align[1] > 0 # y-
    when 'east' then @align[0] += steps if @align[0] < @max_xy[0] # x+
    when 'west' then @align[0] -= steps if @align[0] > 0 # x-
    end
    @align
  end
end
# a = Movement.new(1,1,'north')
# binding.pry
