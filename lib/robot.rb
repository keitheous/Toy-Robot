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
    @orient = [0,0,nil,'!placed']
  end

  def place(x, y, direction)
    if Rule.new.placed_inbound?(x, y)
      @orient = [x,y,direction,'placed']
    end
    @orient
  end

  def move
    if robot_placed
      @orient[0...3] = Movement.new(@orient[0], @orient[1], @orient[2]).forward
    end
    @orient
  end

  def turn_right
    if robot_placed
      @orient[2] = Direction.new(@orient[2]).rotate_90_deg_right
    end
    @orient
  end

  def turn_left
    if robot_placed
      @orient[2] = Direction.new(@orient[2]).rotate_90_deg_left
    end
    @orient
  end

  def report_status
    if robot_placed
      puts "LOC: (#{@orient[0]},#{@orient[1]}), DIR: #{@orient[2].capitalize}."
    end
    @orient
  end

  private
  def robot_placed
    Rule.new.robot_placed?(@orient[3])
  end
end
a = Robot.new
binding.pry
