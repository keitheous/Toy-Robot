# spec/board_spec.rb
require_relative "../lib/board"
describe Board do
  context "Object output after execution" do
    it "returns default output of 5 x 5 board" do
      object = Board.new.set_dimensions
      default_output = [4, 4]
      expect(object).to eql(default_output)
    end

    it "returns custom output of 10 x 10 board" do
      object = Board.new.set_dimensions(10,10)
      default_output = [9, 9]
      expect(object).to eql(default_output)
    end
  end
end

# Board.setdimensions returns an array not nil

# if feed argument the x and y changes accordingy
