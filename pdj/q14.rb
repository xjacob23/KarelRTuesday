def count_letters(sentence)
	letter_count = Hash.new(0)
	sentence.downcase.each_char do |char|	
    letter_count[char] += 1 if char.match?(/[a-z]/)
  end
  letter_count
end

puts "Enter a sentence:"
sentence = gets.chomp
result = count_letters(sentence)

puts "Letter counts:"
result.each { |letter, count| puts "#{letter}: #{count}" }