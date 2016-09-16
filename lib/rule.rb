require 'pry'
require_relative 'board'
# Game Rules
class Rule
  attr_accessor :game
  def initialize
    @game = true
    @placed = true
  end

  def check_initial_placement_inbound(init_x, init_y)
    x_range, y_range = Board.new.set_dimensions
    if !init_x.between?(0, x_range) || !init_y.between?(0, y_range)
      puts 'out of bound placement!'
      @game = false
    end
    @game
  end
end

# ! How should i do this???
# The first valid command to the robot is a PLACE command, discard all commands in the sequence until a valid PLACE command has been executed. .
#  A robot that is not on the table can choose to ignore the MOVE, LEFT, RIGHT and REPORT commands.
