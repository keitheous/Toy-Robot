# spec/direction_spec.rb
require_relative "../lib/direction"
describe Direction do
  context "Object output after execution" do
    it "returns string from COMPASS after initialize" do
      object = Direction.new('west')
      default_output = 3
      expect(object).to eql(default_output)
    end

    it "returns north after rotate right from west" do
      object = Direction.new('west').rotate_90_degrees_right
      default_output = 'north'
      expect(object).to eql(default_output)
    end

    it "returns west after rotate right from north" do
      object = Direction.new('north').rotate_90_degrees_left
      default_output = 'west'
      expect(object).to eql(default_output)
    end
  end
end

# Direction.initialize something is in downcase and equal to something from COMPASS


#rotate 90 degrees right from south returns west

#rotate 90 degrees left from north returns west
