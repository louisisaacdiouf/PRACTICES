puts "Hello !\nHow can I call you?"
name = gets.chomp()
puts ("Yo " + name + "!\nGive me 2 numbers to sum, substract, multiply and divide");
puts "Number 1:"
a = gets.chomp().to_f
puts "Number 2:"
b = gets.chomp().to_f

puts ("Sum: " + (a + b).to_s);
puts ("Sub: " + (a - b).to_s);
puts ("Mul: " + (a * b).to_s);
puts ("Div: " + (a / b).to_s);