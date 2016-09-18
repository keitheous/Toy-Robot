# require 'pry'
require_relative 'direction'
# lib/movement.rb
class Movement
  attr_accessor :location, :max_xy
  def initialize(x, y, direction)
    @align = [x, y, direction]
  end

  def forward(steps = 1)
    case @align[2] # direction
    when 'north' then @align[1] += steps # y+
    when 'south' then @align[1] -= steps # y-
    when 'east' then @align[0] += steps # x+
    when 'west' then @align[0] -= steps # x-
    end
    @align
  end
end
