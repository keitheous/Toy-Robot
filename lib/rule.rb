# require 'pry'
require_relative 'board'
require_relative 'movement'
# lib/rule.rb
class Rule
  attr_accessor :game, :xy_range
  def initialize
    @game = true
    @xy_range = Board.new.set_dimensions
  end

  def placed_inbound?(init_x, init_y)
    if !init_x.between?(0, xy_range[0]) || !init_y.between?(0, xy_range[1])
      puts 'error! out of bound placement!'
      @game = false
    end
    @game
  end

  def robot_placed?(placed_status)
    if placed_status != 'placed'
      puts 'error! robot not placed!'
      @game = false
    end
    @game
  end
end
