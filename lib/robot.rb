require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
#Robot
class Robot
  attr_accessor :orient

  def placement(x, y, direction)
    if Rule.new.check_initial_placement_inbound(x, y) == true
      @orient = [x,y,direction]
      # binding.pry
    end
  end

  def move
    @orient = Movement.new(@orient[0],@orient[1],@orient[2]).forward
  end
end

a = Robot.new
binding.pry
