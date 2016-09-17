# spec/board_spec.rb
require "spec_helper"
describe Board do
  describe "#set_dimensions" do
    it "initalizes a 5 x 5 board" do
      object = Board.new.set_dimensions
      default_output = [4, 4]
      expect(object).to eql(default_output)
    end
  end
end
# bundle exec rspec -fd spec/board_spec.rb
