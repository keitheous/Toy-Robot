# spec/direction_spec.rb
require "spec_helper"
describe Direction do
  describe "#initialize" do
    it "returns an index from COMPASS" do
      index_from_arr = Direction.new('north').compass_index
      north_index = 0
      expect(index_from_arr).to eql(north_index)
    end
  end

  describe "#rotate_90_deg" do
    it "returns east right from north" do
      north_turn_right = Direction.new('north').rotate_90_deg('right')
      direction = 'east'
      expect(north_turn_right).to eql(direction)
    end
  end

  describe "#rotate_90_deg" do
    it "returns west right from north" do
      north_turn_right = Direction.new('north').rotate_90_deg('left')
      direction = 'west'
      expect(north_turn_right).to eql(direction)
    end
  end

end
