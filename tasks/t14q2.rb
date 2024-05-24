matrice = [12, 5, 41, 98, 12, 80, 74, 22, 43, 55, 53, 40, 66, 58, 72, 99, 48, 46, 20, 94, 22, 79, 80, 59, 61, 84, 40, 18, 99, 63, 16, 15, 100, 26, 48, 9, 25, 19, 63, 100, 47, 48, 10, 27, 34, 34, 88, 40, 43, 74, 87, 36, 47, 52, 7, 37, 74, 77, 72, 80, 53, 64, 88, 97, 45, 100, 91, 32, 36, 57, 1, 3, 98, 9, 78, 39, 46, 87, 44, 28, 7, 92, 34, 92, 59, 51, 50, 19, 35, 41, 45, 98, 49, 46, 75, 80, 23, 21, 58, 54]

# Selecting even numbers

even_numbers = matrice.select { |num| num.even? }

# Sorting and selecting unique even numbers

sorted_unique_even_numbers = even_numbers.uniq.sort

# Selecting odd numbers

odd_numbers = matrice.reject { |num| num.even? }

# Sorting and selecting unique odd numbers

sorted_unique_odd_numbers = odd_numbers.uniq.sort

# Displaying sorted unique even numbers

puts "Sorted unique even numbers:"
puts sorted_unique_even_numbers.join(", ")

# Displaying sorted unique odd numbers

puts "\nSorted unique odd numbers:"
puts sorted_unique_odd_numbers.join(", ")