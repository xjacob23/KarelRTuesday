values = Array.new(50) { rand(0..100) }

def second_largest_element(array)
	sort_array = array.uniq.sort.reverse
	sort_array[1]
end

puts "Generated Array: #{values}"
second_largest = second_largest_element(values)
puts "Second_largest_element in the array: #{second_largest}"
