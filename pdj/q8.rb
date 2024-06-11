puts "Enter a word:"
word = gets.chomp.downcase

puts "Enter a letter:"
letter = gets.chomp.downcase

if word.include?(letter)
  puts "The letter '#{letter}' is present in the word '#{word}'."
else
  puts "The letter '#{letter}' is not present in the word '#{word}'."
end
