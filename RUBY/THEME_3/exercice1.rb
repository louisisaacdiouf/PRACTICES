class Personne
  def initialize(nom, age)
    @nom = nom
    @age = age
  end

  def parler
    puts "Bonjour, je suis #{@nom} et j'ai #{@age} ans."
  end
end

personne = Personne.new(ARGV[0], ARGV[1])
personne.parler