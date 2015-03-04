# This is the String#scan method. It iterates over a string, and returns matches based on the chosen regex
# It then passes these to an array or to a block. We make an assumption that the binary is ISO 8859-1 encoded,
# rather than ASCII (8 vs 7-bit encoding). We then convert each element in the array to a base2 integer,
# then call Integer#chr return the character.

def binary_scan(binary_input)
  binary_input.gsub(/\n/, '').scan(/\d{8}/).map { |b| b.to_i(2).chr }.join
end

puts "Enter binary:\n"
input = gets.chomp
puts binary_scan(input)
