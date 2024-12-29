class Animal
  def parler
    puts "Grrr!"
  end
end

class Chien < Animal
  def parler
    puts "Wouf!"
  end
end

class Chat < Animal
  def parler
    puts "Miaou!"
  end
end

puts Animal.new.parler
puts Chien.new.parler
puts Chat.new.parler