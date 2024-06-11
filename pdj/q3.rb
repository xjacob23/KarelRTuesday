names = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]

puts "Names in the list: #{names.join(', ')}" # Show names in the list

loop do
  print "Enter a name (type 'q' to quit): "
  name = gets.chomp
  break if name.downcase == 'q' 
  
  if names.include?(name.capitalize) # Shows if the entered name is in the list
    puts "Present"
  else
    puts "Absent"
  end
end
