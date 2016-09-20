# lib/movement.rb
class Movement
  attr_accessor :positions
  def initialize(robot_x, robot_y, max_x, max_y, direction)
    @positions = [robot_x, robot_y, max_x, max_y, direction]
    # robot & board details [rbt_x, rbt_y, max_x, max_y, rbt_direction]
  end

  def move_forward(steps = 1)
    case @positions[4] # direction
    when 'north' then @positions[1] += steps if @positions[1] < @positions[3]
    when 'south' then @positions[1] -= steps if @positions[1] > 0
    when 'east' then @positions[0] += steps if @positions[0] < @positions[2]
    when 'west' then @positions[0] -= steps if @positions[0] > 0
    end # switch y+ y- x+ x-
    @positions[0...2]
  end
end
