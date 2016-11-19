# Rock Paper Scissors Game

VALID_CHOICES = %w(rock paper scissors).freeze

puts 'Welcome to Rock Paper Scissors'
puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

loop do
  user_choice = ''
  loop do
    puts 'Please select Rock, Paper, or Scissors.'
    user_choice = gets.chomp.downcase
    break if VALID_CHOICES.include?(user_choice)
    puts 'Please make a valid selection.'
  end

  puts "You have chosen #{user_choice.capitalize}."

  computers_choice = VALID_CHOICES.sample
  puts "The Computer chooses #{computers_choice.capitalize}."

  if user_choice == computers_choice
    puts 'It\'s a Draw.'
  elsif user_choice == 'rock' && computers_choice == 'scissors'
    puts 'You Win.'
  elsif user_choice == 'paper' && computers_choice == 'rock'
    puts 'You Win.'
  elsif user_choice == 'scissors' && computers_choice == 'paper'
    puts 'You Win.'
  else
    puts 'You Lose.'
  end

  puts 'Would you like to play again? (Y/N)'
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')

end
