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
    actual_index(@compass_index)
  end

  def rotate_90_degrees_left
    @compass_index -= 1
    actual_index(@compass_index)
  end

  private

  def actual_index(extended_index)
    extended_row = (extended_index.abs / COMPASS.length) * COMPASS.length
    if extended_index > COMPASS.length - 1
      extended_index -= extended_row
    elsif extended_index < -COMPASS.length
      extended_index += extended_row
    end
    COMPASS[extended_index]
  end
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
#
# a = Direction.new('west')
# binding.pry
