require_relative 'movement'
# lib/rule.rb
class Rule
  attr_accessor :game
  def initialize
    @game = true
  end

  def placed_inbound?(robot_x, robot_y, max_x, max_y)
    if !robot_x.between?(0, max_x) || !robot_y.between?(0, max_y)
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
