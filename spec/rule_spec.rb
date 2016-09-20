# spec/board_spec.rb
require "spec_helper"
describe Rule do
  describe "#initialize" do
    before(:each) do
      @rule = Rule.new
    end

    it "game rule to be true" do
      expect(@rule.game).to eql(true)
    end

    it "not placed to returned false" do
      placed_state = @rule.robot_placed?('!placed')
      expect(placed_state).to eql(false)
    end

    it "place out of bound returned false" do
      placed_state = @rule.placed_inbound?(1, 7, 5, 5)
      expect(placed_state).to eql(false)
    end
  end
end
# bundle exec rspec -fd spec/rule_spec.rb


# Rule.new returns ?

# !! error handling - dont know how YET

# Check for false statement if out of bound

# Check for false statement if robot not placed

# check for false statement if ???
# end
