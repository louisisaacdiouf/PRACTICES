puts "Palindrome"
puts "----------"
puts "Entrez un mot"
mot = gets.chomp()

def palindrome(str) return str.downcase.reverse == str.downcase end

verb = "n'est pas"
if palindrome(mot)
  verb = "est"
end

puts "\"#{mot}\" #{verb} un palindrome."
