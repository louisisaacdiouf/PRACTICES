class CompteBancaire
  def initialize(val)
    @solde = val
  end

  attr_accessor :solde
end

cb = CompteBancaire.new(1000)
puts "Premier solde : #{cb.solde}"

cb.solde = 2500
puts "Deuxième solde : #{cb.solde}"