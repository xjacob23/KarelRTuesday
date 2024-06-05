require 'byebug'


def moyenne(matrice)
  sum = matrice.sum
  size = matrice.size
  average = sum.to_f / size
end

moy = moyenne([343, 35, 25, 6, 5226, 74, 36, 34, 63, 467, 34])

debugger 

puts "Average: #{moy}"


