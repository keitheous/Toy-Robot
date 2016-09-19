require_relative '../lib/robot'
# bin/toy_robot.rb
puts '***************'
puts ' The Toy Robot '
puts '***************'
@robot = Robot.new
loop do
  puts '==============='
  puts 'only type the following commands:'
  puts 'PLACE X,Y,F ~ F: north, south, east or west'
  puts 'MOVE'
  puts 'LEFT'
  puts 'RIGHT'
  puts 'REPORT'
  puts '--(q)uit'
  puts '==============='
  input_string = gets.chomp
  string = input_string.downcase
  case string
  when /place\s\d\,\d\,.+/
    @robot.place(string[6].to_i, string[8].to_i, string[10...string.length])
  when /move/
    @robot.move
  when /left/
    @robot.turn_left
  when /right/
    @robot.turn_right
  when /report/ # report
    puts '==============='
    @robot.report_status
  else
    string == 'q' ? break : (puts "invalid #{string} choice - try again")
  end
end
