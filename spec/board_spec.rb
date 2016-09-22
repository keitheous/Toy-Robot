# spec/board_spec.rb
require "spec_helper"
describe Board do
  describe "#set_dimensions" do
    it "can initalize a 5 x 5 board" do
      expect(Board.new.set_dimensions).to eql([4, 4])
    end
  end
end

# bundle exec rspec -fd spec/board_spec.rb
