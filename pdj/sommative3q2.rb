puts "Enter a value from between 1 and 100:"         
user_value = gets.chomp.to_i
                
while user_value < 1 || user_value > 100         #Lets the user input a value and ensures that the user is in range of 1-100.
	puts "Invalid input. Please enter a value in between 1 and 100:"
	user_value = gets.chomp.to_i
end

notes = Array.new(200) {rand(1..100) } #Creates the array with 200 random values between 1 and 100.

greater_than = notes.count { |note| note > user_value }
less_than = notes.count { |note| note < user_value }    #Counts how many values in the 'notes' Array are greater than, less than or equal to. 
equal_to = notes.count(user_value)

puts "Array 'notes' with 200 random values has been created." #This prints out saying that the array has been created.
puts "User value: #{user_value}" #This line saves and prints the user input the user put in originally. 
puts "Array 'notes': #{notes}"   #This line prints the array on screen with all the 200 values in the terminal. 
puts "Number of values greater than user input: #{greater_than}"   #These last 3 lines puts/prints everything in the terminal
puts "Number of values less than user input #{less_than}:"   #How many values are greater than, less than or equal to the number the user input
puts "Number of values equal to user input #{equal_to}:"