require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
# lib/robot.rb
class Robot
  attr_accessor :orient, :board_size

  def initialize
    @orient = [0, 0, nil, '!placed']
    @board = Board.new.set_dimensions
  end

  def place(x, y, direction)
    @orient = [x, y, direction, 'placed'] if Rule.new.placed_inbound?(x, y)
  end

  def move
    if placed
      @orient[0...3] = Movement.new(@orient[0], @orient[1], @orient[2]).forward
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

  def placed
    Rule.new.robot_placed?(@orient[3])
  end
end
#
# a = Robot.new
# binding.pry
