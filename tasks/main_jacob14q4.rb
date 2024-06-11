x = rand(1..100)
guesses = []

puts "Welcome to the Number Guessing Game!"

loop do
  print "Enter your guess (between 1 and 100): "
  guess = gets.chomp.to_i
  guesses << guess

  if guess == x
    puts "Congratulations! You guessed the correct number #{x}!"
    puts "Number of guesses: #{guesses.size}"
    break
  elsif guess < x
    puts "Too low! Try again."
  else
    puts "Too high! Try again."
  end
end
