# spec/direction_spec.rb
require "spec_helper"
describe Movement do
  describe "#initialize" do
    it "puts array in align" do
      initialized_object = Movement.new(0, 0, 'north').align
      align_array = [0, 0, 'north']
      expect(initialized_object).to eql(align_array)
    end
  end

  describe "#forward" do
    it "moves one unit up facing north" do
      initialized_object = Movement.new(0, 0, 'north').forward
      align_array_upwards = [0, 1, 'north']
      expect(initialized_object).to eql(align_array_upwards)
    end
  end

  describe "#forward" do
    it "moves one unit down facing south" do
      initialized_object = Movement.new(0, 1, 'south').forward
      align_array_downwards = [0, 0, 'south']
      expect(initialized_object).to eql(align_array_downwards)
    end
  end
end
