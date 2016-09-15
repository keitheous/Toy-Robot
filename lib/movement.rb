require 'pry'
require_relative 'direction'
# Movement
class Movement
  attr_accessor :location
  def initialize(x, y, direction)
    @location = [x, y, direction]
  end

  def forward(steps = 1)
    if @location[2] == 'north'
      @location[1] += steps # y++
    elsif @location[2] == 'south'
      @location[1] -= steps # y--
    elsif @location[2] == 'east'
      @location[0] += steps # x++
    else
      @location[0] -= steps # x--
    end
    @location
  end
end
# a = Movement.new(1,2,"north")
# binding.pry
