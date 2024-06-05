notes = Array.new(200) { rand(20..100) }

def calculate_stats(notes)
  sum = notes.sum
  average = sum.to_f / notes.length
  lowest = notes.min
  highest = notes.max
  other_grades = notes.reject { |grade| grade == lowest || grade == highest }
  
  return average, lowest, highest, other_grades
end

#This shows every other grade so the other 197 values since we only see the highest, the lowest and the average grade.

average, lowest, highest, other_grades = calculate_stats(notes)

puts "Average grade: #{average}"
puts "Lowest grade: #{lowest}"
puts "Highest grade: #{highest}"
puts "Other grades: #{other_grades}"


