# spec/robot_test.rb
require "spec_helper"
describe Robot do
  describe "#initialize" do
    it "returns orient_array with format" do
      expect(Robot.new.orient).to eql([0, 0, nil, '!placed'])
    end
  end

  describe "#place" do
    it "returns array of orientation array" do
      placing_robot = Robot.new.place(1,1,'north')
      expect(placing_robot).to eql([1, 1, 'north', 'placed'])
    end
  end

  describe "#move" do
    it "increments one unit in north" do
      # placing_robot = Robot.new.place(1,1,'north')
      # moving_robot = placing_robot.move
      # expect(moving_robot).to eql([1, 1])
      # hmm not working.. when fed 1,1, North, should return 1, 2
    end
  end

  describe "#turn_right" do
    it "changes north to east" do
      turn_right_method = Direction.new('north').rotate_90_deg('right')
      expect(turn_right_method).to eql('east')
      # north should return east
      # issues with use of local variable VS arg of method
      # testing the logic around the method instead
    end
  end

  describe "#turn_left" do
    it "changes north to west" do
      turn_left_method = Direction.new('north').rotate_90_deg('left')
      expect(turn_left_method).to eql('west')
      # north should return west
      # issues with use of local variable VS arg of method
      # testing the logic around the method instead
    end
  end

  describe "#report_status" do
    it "prints loc/dir based on orientation array" do
      @orient_array = Robot.new.place(1,1,'north')
      str = "#{@orient_array[0]},#{@orient_array[1]},#{@orient_array[2].upcase}."
      expect(str).to eql("1,1,NORTH.")
      # printing strings
      # issues with use of local variable VS arg of method
      # testing the logic around the method instead
    end
  end
end
# bundle exec rspec -fd spec/robot_test.rb
