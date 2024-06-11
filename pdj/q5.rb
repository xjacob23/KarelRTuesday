values = Array.new(200) { rand(0..100) }

sum_even = values.select { |num| num.even? }.sum   #This line calculates the sum of even numbers in the values array. 

puts "Array of numbers:" 
puts values.inspect                 #These lines print out the original array values to the terminal, displaying all the random numbers generated.

puts "\nSum of even numbers in the array: #{sum_even}"  #This line prints out the sum of even numbers calculated earlier. 
 #The #{sum_even} part is a placeholder that gets replaced. by the actual value of sum_even when the string is printed.
