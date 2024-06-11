values = Array.new(200) { rand(0..100) }

frequencies = values.group_by { |num| num }.transform_values(&:count) #counting how many times each number shows up in our list of random numbers.

most_frequent_elements = frequencies.select { |_, count| count == frequencies.values.max }.keys #This line identifies the numbers that appear most frequently. 
																	    #It compares the count of each number with the maximum count found earlier.
																		#If the count matches the maximum count, it includes that number in the list of most frequent elements.

puts "Array of numbers:"
puts values.inspect 													  #printing out the original list of random numbers and the number(s) that appear most frequently.
puts "\nMost frequent element(s) in the array: #{most_frequent_elements}"
