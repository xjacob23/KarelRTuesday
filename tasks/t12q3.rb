random_number1 = rand(21) 
random_number2 = rand(21) 

puts "First random number: #{random_number1}"
puts "Second random number: #{random_number2}"

if random_number1 > random_number2
  puts "The first random number is larger as is's #{random_number1}."
elsif random_number1 < random_number2
  puts "The second random number is larger as it's #{random_number2}."
else
  puts "Both random numbers are equal."
end