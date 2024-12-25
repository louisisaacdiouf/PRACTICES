puts "Somme des multiples de 3 ou 5 inférieurs à n"
puts "--------------------------------------------"
puts "Entrez un nombre :"
n = gets.chomp().to_i

def somme_multiples(n)
  sum = 0
  for i in 0..(n-1)
    if i%3 == 0 or i%5 == 0
      sum += i
    end
  end
  return sum  
end

puts "Somme des multiples de 3 ou 5 inférieurs à #{n} => #{somme_multiples(n)}"