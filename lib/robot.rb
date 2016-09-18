require_relative 'direction'
require_relative 'movement'
require_relative 'board'
require_relative 'rule'
require 'pry'
# require_relative 'report'
# lib/robot.rb
class Robot
  attr_accessor :orient

  def initialize
    @orient = [0, 0, nil, '!placed']
  end

  def place(x, y, direction)
    @orient = [x, y, direction, 'placed'] if Rule.new.placed_inbound?(x, y)
  end

  def move
    if robot_placed
      @orient[0...3] = Movement.new(@orient[0], @orient[1], @orient[2]).forward
    end
  end

  def turn_right
    @orient[2] = Direction.new(@orient[2]).rotate_90_deg_right if robot_placed
  end

  def turn_left
    @orient[2] = Direction.new(@orient[2]).rotate_90_deg_left if robot_placed
  end

  def report_status
    if robot_placed
      "LOC: (#{@orient[0]},#{@orient[1]}), DIR: #{@orient[2].capitalize}."
    end
  end

  private

  def robot_placed
    Rule.new.robot_placed?(@orient[3])
  end
end
a = Robot.new
binding.pry
