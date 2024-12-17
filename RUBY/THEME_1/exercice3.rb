def fibonacci(n)
  case n
  when 0
    return 0
  when 1
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

puts "Calcul de fibonacci\n-------------------------------"
puts "Entrez un nombre :"
n = gets.chomp().to_i
puts "fibonacci(#{n}) = #{fibonacci(n)}"