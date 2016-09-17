# spec/report_spec.rb
require_relative "../lib/report"
describe Report do
  context "Object output after execution" do

    it "returns string based on input" do
      object =  Report.new.print_string(1, 1, 'east').forward
      default_output = #????
      expect(board_object).to default_output
    end
  end
end

# class declaration for test

# class
# prints string when fed orientation array
#end
