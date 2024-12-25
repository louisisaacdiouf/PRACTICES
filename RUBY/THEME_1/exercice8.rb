puts "Compter les occurrences d’un caractère"
puts "--------------------------------------"
puts "Entrez la chaine de caractère"
str = gets.chomp().downcase
puts "Entrez l'expression à compter"
expr = gets.chomp().downcase

def compter(str, expr) return str.scan(expr).count end

puts "Il y a #{compter(str, expr)} fois \"#{expr}\" dans \"#{str}\""