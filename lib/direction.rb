require 'pry'
# Direction
class Direction
  COMPASS = ['north', 'east', 'south', 'west']
  attr_accessor :compass_index

  def initialize(direction)
    @compass_index = COMPASS.index(direction.downcase)
  end

  def rotate_90_degrees_right
    @compass_index += 1
    COMPASS[@compass_index]
  end

  def rotate_90_degrees_left
    @compass_index -= 1
    COMPASS[@compass_index]
  end

  # def report_current
  #   numbers_in_between = (@compass_index.abs / COMPASS.length) * COMPASS.length
  #
  #   if @compass_index > COMPASS.length - 1
  #     @compass_index -= numbers_in_between
  #   elsif @compass_index < -COMPASS.length
  #     @compass_index += numbers_in_between
  #   end
  #
  #   COMPASS[@compass_index]
  # end
end
# a = Direction.new('west').rotate_90_degrees_left
# binding.pry
