def factoriel(n)
  if n == 0 or n == 1
    return 1
  end
  return n * factoriel(n-1)
end

puts "Calcul du factoriel\n-------------------"
puts "Entrez un nombre :"
n = gets.chomp().to_i
puts "#{n}! = #{factoriel(n)}"