require 'byebug'

def longeur(matrice)
	matrice.inject(0) {|n, mot| n + mot.length}
end

  


puts longeur(["Jacob", "Chase", "Joseph", "M. Mark"])
