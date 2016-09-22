# spec/direction_spec.rb
require "spec_helper"
describe Direction do
  before(:each) do
    @north = Direction.new('north')
  end

  describe "#initialize" do
    it "returns north index in compass" do
      north_index = 0
      expect(@north.compass_index).to eql(north_index)
    end
  end

  describe "#rotate_90_deg" do
    it "returns east, right of north" do
      north_turn_right = @north.rotate_90_deg('right')
      expect(north_turn_right).to eql('east')
    end
  end

  describe "#rotate_90_deg" do
    it "returns west, left of north" do
      north_turn_left = @north.rotate_90_deg('left')
      expect(north_turn_left).to eql('west')
    end
  end

end
