puts "Enter 5 numerical values, separated by spaces:"  #Make sure you input the 5 numbers like this Ex: 1 4 7 8 23

values = gets.chomp.split  #Divides the string into an array of substrings based on whitespace

values.map!(&:to_f)   #This line converts every element to a floating-point number using map!(&:to_f)

sorted_values = values.sort   #The array of floating-point numbers are sorted in descending order using "sort."

puts "Sorted valued from bottom to top"
puts sorted_values