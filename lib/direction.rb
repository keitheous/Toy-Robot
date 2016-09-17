# require 'pry'
# lib/direction.rb
class Direction
  COMPASS = %w(north east south west).freeze
  attr_accessor :compass_index
  def initialize(direction)
    @compass_index = COMPASS.index(direction.downcase)
  end

  def rotate_90_deg_right
    @compass_index += 1
    actual_index(@compass_index)
  end

  def rotate_90_deg_left
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
