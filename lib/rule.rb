require 'pry'
require_relative 'board'
# Game Rules
class Rule
  attr_accessor :game
  def initialize
    @game = true
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

# Check for first command to be placement.
