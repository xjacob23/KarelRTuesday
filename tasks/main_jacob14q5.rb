def generate_random_value
  rand(0..50)
end

def validate_answer(value1, value2, answer)
  sum = value1 + value2
  if answer == sum
    puts "Correct! #{value1} + #{value2} = #{sum}"
  else
    puts "Incorrect! #{value1} + #{value2} = #{sum}, not #{answer}."
  end
end

puts "Welcome to my Addition Game!"

loop do
  value1 = generate_random_value
  value2 = generate_random_value
  puts "What is the sum of #{value1} and #{value2}?"
  print "Enter your answer: "
  user_answer = gets.chomp.to_i
  
  validate_answer(value1, value2, user_answer)

  print "Do you want to play again? (yes/no): "
  break unless gets.chomp.downcase == "yes"
end

puts "Thanks for playing!"
