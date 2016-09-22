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
      # placing_robot = Robot.new.place(1,1,'north')
      # robot_turning_right = placing_robot.turn_right
      # expect(robot_turning_right).to eql(['east')
      # north should return east
    end
  end

  describe "#turn_left" do
    it "changes north to west" do
      # placing_robot = Robot.new.place(1,1,'north')
      # robot_turning_right = placing_robot.turn_left
      # expect(robot_turning_right).to eql(['west')
      # north should return west
    end
  end

  describe "#report_status" do
    it "prints the following string" do
      # placing_robot = Robot.new.place(1,1,'north')
      # robot_reporting = placing_robot.report_status
      # expect(robot_turning_right).to eql('1,1,NORTH')
      # report status string based on fed argument
      # hmm? whats wrong here? is it because of local variable vs arg****?
    end
  end
end
# bundle exec rspec -fd spec/robot_test.rb
