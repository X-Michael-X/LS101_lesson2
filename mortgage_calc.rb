# Mortgage Calculator

loop do
  puts 'Welcome to the Mortgage Calculator!'
  puts '-----------------------------------'

  puts 'How much is the loan for?'

  loan = ''
  loop do
    loan = gets.chomp
    break unless loan.empty? || loan.to_f <= 0
    puts 'You must enter a positive loan amount.'
  end

  puts 'What is the interest rate on this loan?'
  puts 'Example : 5% is 5 , 2.5% is 2.5'

  apr = ''
  loop do
    apr = gets.chomp
    break unless apr.empty? || apr.to_f <= 0
    puts 'You must enter a positive interest rate.'
  end

  puts 'What is the loan\'s duration in years?'

  years = ''
  loop do
    years = gets.chomp
    break unless years.empty? || years.to_i < 0
    puts 'You must enter a valid loan duration.'
  end

  annual_interest = apr.to_f / 100
  monthly_interest = annual_interest / 12
  months = years.to_i * 12

  monthly_payment = loan.to_f * (monthly_interest / (1 -
    (1 + monthly_interest)**-months.to_i))

  #Below altered version of code along, but functions the same?... what does the 02 in format(%02.2f, _ ) do?
  puts "Your monthly payment is $#{format('%.2f', monthly_payment)}"

  puts 'Another calculation?'
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

puts 'Thank you for using Mortgage Calculator v1.0'
puts 'Goodbye!'
