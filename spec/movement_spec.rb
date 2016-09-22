# spec/direction_spec.rb
require "spec_helper"
describe Movement do

  describe "#initialize" do
    positions_array = Movement.new(0, 0, 4, 4, 'north').positions
    it "returns all data in an array" do
      expect(positions_array).to eql([0, 0, 4, 4, 'north'])
    end
  end

  describe "#move_forward" do
    it "moves one unit up, facing north" do
      positions_array = Movement.new(0, 0, 4, 4, 'north').move_forward
      expect(positions_array).to eql([0, 1])
    end
  end

  describe "#move_forward" do
    it "moves one unit down, facing south" do
      positions_array = Movement.new(0, 1, 4, 4, 'south').move_forward
      expect(positions_array).to eql([0, 0])
    end
  end
end
