require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
require 'pry'
# require_relative 'report'
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
    if placed
      "LOC: (#{@orient[0]},#{@orient[1]}), DIR: #{@orient[2].capitalize}."
    end
  end

  private

  def placed
    Rule.new.placed?(@orient[3])
  end
end
