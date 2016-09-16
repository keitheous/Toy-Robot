require_relative 'robot'
#Report
class Report
  def print_string(orient_arr)
    puts 'Robot Report'
    puts '============'
    puts "Location: (#{orient_arr[0]},#{orient_arr[1]}) "
    puts "Orientation: #{orient_arr[2]} "
  end
end
