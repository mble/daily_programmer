def translate(num)
  unless (num =~ /^\d{9}$/) == nil # Only want digits
    output_array = [" _     _  _     _  _  _  _  _ ",
                   "| |  | _| _||_||_ |_   ||_||_|",
                   "|_|  ||_  _|  | _||_|  ||_| _|"]
    line_number = 0
    3.times do
      num.each_char do |character|
        print output_array[line_number][(character.to_i*3)..(character.to_i*3+2)]
      end
      print "\n"
      line_number+=1
    end
  else
    puts "Invalid input"
  end
end

puts "Please enter an integer:\n"
input = gets.chomp.to_s # User input for arbitrary inputs
translate(input)
