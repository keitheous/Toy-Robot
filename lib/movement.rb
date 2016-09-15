require 'pry'
require_relative 'direction'
# Movement
class Movement
  attr_accessor :location
  def initialize(x, y, direction)
    @location = [x, y, direction]
  end

  def forward(steps = 1)
    case @location[2] #direction
    when 'north' then @location[1] += steps # y+
    when 'south' then @location[1] -= steps # y-
    when 'east' then @location[0] += steps # x+
    when 'west' then @location[0] -= steps # x-
    end
    @location
  end
end
# a = Movement.new(1, 2, 'north')
# binding.pry
# to add direction dependencies later
