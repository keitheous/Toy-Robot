# lib/direction.rb
class Direction
  COMPASS = %w(north east south west).freeze
  attr_accessor :compass_index
  def initialize(direction)
    @compass_index = COMPASS.index(direction)
  end

  def rotate_90_deg(left_or_right)
    if left_or_right == 'right'
      @compass_index += 1
    else
      @compass_index -= 1
    end
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
