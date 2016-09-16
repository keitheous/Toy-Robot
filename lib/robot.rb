require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
require_relative 'report'
# Robot
class Robot
  attr_accessor :orient
  def placement(x, y, direction)
    if Rule.new.check_initial_placement_inbound(x, y) == true
      @orient = [x, y, direction]
    end
  end

  def move
    @orient = Movement.new(@orient[0], @orient[1], @orient[2]).forward
    binding.pry
  end

  def turn_right
    @orient[2] = Direction.new(@orient[2]).rotate_90_degrees_right
    @orient
  end

  def turn_left
    @orient[2] = Direction.new(@orient[2]).rotate_90_degrees_left
    @orient
  end

  def report_status
    Report.new.print_string(@orient)
  end
end
a = Robot.new
binding.pry
