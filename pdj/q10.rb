def palindrome?(word)
  word.downcase == word.downcase.reverse #converts to lowercase and reverses the word the method returns true if the reversed word is the same as the original. 
end

puts "Enter a word:"         #lets you input a word with "puts" to see if its a palindrome or not. 
word = gets.chomp

if palindrome?(word)
  puts "The word '#{word}' is a palindrome."
else
  puts "The word '#{word}' is not a palindrome."
end
