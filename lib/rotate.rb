require 'pry'

# Movement
class Rotate

  DIRECTIONS = ['north', 'east', 'south', 'west']
  attr_accessor :compass_index
  def initialize(direction)
    @compass_index = DIRECTIONS.index(direction.downcase)
    puts "initially i'm facing #{DIRECTIONS[compass_index]}"
    # binding.pry
  end

  def ninty_degrees_right
    @compass_index += 1
    puts "now facing #{DIRECTIONS[compass_index]}, compass_index = #{compass_index}"
  end

  def ninty_degrees_left
    @compass_index -= 1
    puts "now facing #{DIRECTIONS[compass_index]}, compass_index = #{compass_index}"
  end

end
