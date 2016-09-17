# spec/movement_spec.rb
require_relative "../lib/movement"
describe Movement do
  context "Object output after execution" do

    #movement.new gives you x y and direction array not nil

    #obtain @max_xy not nil based on Board class

    it "returns result of one step forward facing north" do
      object =  Movement.new(1, 1, 'north').forward
      default_output = [1, 2, 'north']
      expect(object).to default_output
    end

    it "returns result of one step forward facing east" do
      object =  Movement.new(1, 1, 'east').forward
      default_output = [2, 1, 'north']
      expect(object).to default_output
    end
  end
end


# forward fed 1,1,north should return 1,2,north

#forward fed 1,1,east returns 2,1,east
