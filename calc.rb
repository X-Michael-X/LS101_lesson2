# Calculator

puts "What is the first number?"
x = gets().chomp()

puts "What is the second number?"
y = gets().chomp()

puts "Would you like to Add, Subtract, Multiply, or Divide these numbers?"
z = gets().chomp().downcase()

if z == "add"
  result = x.to_i() + y.to_i()
elsif z == "subtract"
  result = x.to_i() - y.to_i()
elsif z == "multiply"
  result =  x.to_i() * y.to_i()
elsif z == "divide"
  result =  x.to_i() / y.to_i()
else
  puts "I do not understand"
end

puts "The result is #{result}"

