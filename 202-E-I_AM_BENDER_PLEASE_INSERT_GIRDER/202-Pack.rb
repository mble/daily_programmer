# This is the Array#pack method, which was practically built for this sort of challenge.
# You can specify what sort of string directive and count to convert as a parameter.
# Contrast with String#unpack
# http://ruby-doc.org/core-2.2.0/Array.html#method-i-pack

def binary_pack(binary_input)
  [binary_input].pack('B*')
end

puts "Enter binary:\n"
input = gets.chomp
puts binary_pack(input)
