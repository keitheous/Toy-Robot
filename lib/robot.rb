require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
# lib/robot.rb
class Robot
  attr_accessor :orient, :max_xy

  def initialize
    @orient = [0, 0, nil, '!placed']
    @max_xy = Board.new.set_dimensions # x y
  end

  def place(x, y, direction)
    @orient = [x, y, direction, 'placed'] if placed_within_bound?(x, y)
  end

  def move
    if placed
      @orient[0...2] =
        Movement.new(@orient[0], @orient[1], @max_xy[0], @max_xy[1], @orient[2]).move_forward
    end
  end

  def turn_right
    @orient[2] = Direction.new(@orient[2]).rotate_90_deg('right') if placed
  end

  def turn_left
    @orient[2] = Direction.new(@orient[2]).rotate_90_deg('left') if placed
  end

  def report_status
    puts "#{@orient[0]},#{@orient[1]},#{@orient[2].upcase}." if placed
  end

  private

  def placed # placed on the board
    Rule.new.robot_placed?(@orient[3])
  end

  def placed_within_bound?(robot_x, robot_y) # placement is WITHIN bound
    Rule.new.placed_inbound?(robot_x, robot_y, max_xy[0], max_xy[1])
  end
end
