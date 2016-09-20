# spec/direction_spec.rb
require "spec_helper"
describe Movement do
  describe "#initialize" do
    it "puts data into positions array" do
      initialization = Movement.new(0, 0, 4, 4, 'north').positions
      expect(initialization).to eql([0, 0, 4, 4, 'north'])
    end
  end

  describe "#forward" do
    it "moves one unit up facing north" do
      initialized_object = Movement.new(0, 0, 4, 4, 'north').move_forward
      align_array_upwards = [0, 1]
      expect(initialized_object).to eql(align_array_upwards)
    end
  end

  describe "#forward" do
    it "moves one unit down facing south" do
      initialized_object = Movement.new(0, 1, 4, 4, 'south').move_forward
      align_array_downwards = [0, 0]
      expect(initialized_object).to eql(align_array_downwards)
    end
  end
end
