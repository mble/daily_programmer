#!/usr/bin ruby

def dialogue_search(string)
  play = File.read('macbeth.txt') # Open up the Scottish play
  splay = play.split(/\n\n/) # Join lines into dialogues
  splay.each { |x| puts "#{x}\n\n" if x.include? string } # Find each matching dialogue
end

puts "Search for a phrase within Macbeth"
input = gets.chomp.to_s
puts "\nYour lines:\n"
dialogue_search(input)
