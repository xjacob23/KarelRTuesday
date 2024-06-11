values = (1..100).to_a
deleted_integer = values.delete(rand(1..100)) #This line deletes a random integer 1-100 and assigns the deleted integer to the deleted_integer variable.

puts "Deleted integer: #{deleted_integer}"
puts "Array after deletion: #{values}"         #these lines print out the deleted integer and the values after the deletion. This helps us visualize whats happening. 

missing_integer = values.sum - (1..100).sum

puts "The missing integer from the list is: #{missing_integer}" #This line prints the missing integer in the terminal. 
