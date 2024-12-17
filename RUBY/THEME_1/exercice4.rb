def est_premier(n)
  if n == 0 or n == 1
    return false
  end

  for i in 2..(n/2 + 1)
    if n % i == 0
      return false
    end
  end

  return true
end

puts "Vérification nombre premier\n----------------------------"
puts "Entrez un nombre :"
n = gets.chomp().to_i
puts "est_premier(#{n})? = #{est_premier(n)}"