require 'byebug'

def somme(arr)

  total_sum = arr.sum
  puts "Total sum of all elements in the array: #{total_sum}"
  return total_sum
  
end

arr = [343, 35, 25, 6, 5226, 74, 36, 34, 63, 467, 34]

debugger 

moy = somme(arr)
puts moy
