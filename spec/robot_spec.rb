# spec/robot_test.rb
require "spec_helper"
describe Robot do
  before(:each) do
    @robot = Robot.new
  end
  describe "#initialize" do
    it "orient_array" do
      expect(@robot.orient).to eql([0, 0, nil, '!placed'])
    end
  end

  describe "#place" do
    it "returns array with orientation array" do
      orient_array = [1, 1, 'north', 'placed']
      expect(@robot.place(1,1,'north')).to eql(orient_array)
    end
  end
  describe "#move" do
    it "increments one unit in north" do
      # [1,1,'N'] expects [1,2]
    end
  end
  describe "#turn_right" do
    it "changes north to east" do
      # 'NORTH' expects 'EAST'
    end
  end
  describe "#turn_left" do
    it "changes north to west" do
      # 'NORTH' expects 'WEST'
    end
  end
  describe "#report_status" do
    it "prints the following string" do
      # report status string based on fed argument
    end
  end
end
# bundle exec rspec -fd spec/robot_test.rb
