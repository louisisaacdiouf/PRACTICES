puts "Inverser une chaîne de caractères"
puts "---------------------------------"
puts "Entrez une chaine de caractères"
str = gets.chomp()

def inverser(str)
  return str.reverse
end

puts "#{str} à l'envers donne #{inverser(str)}"