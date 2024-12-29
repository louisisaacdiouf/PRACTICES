class Voiture
  def se_deplacer
    puts "La voiture roule sur la route."
  end
end

class Avion
  def se_deplacer
    puts "L'avion vole dans le ciel."
  end
end

class Bateau
  def se_deplacer
    puts "Le bâteau vogue sur la mer."
  end
end

transport = Voiture.new
puts transport.se_deplacer

transport = Avion.new
puts transport.se_deplacer

transport = Bateau.new
puts transport.se_deplacer