# Rock Paper Scissors Lizard Spock Game

VALID_CHOICES =
  %w(rock paper scissors lizard spock).freeze

puts 'Welcome to Rock Paper Scissors Lizard Spock'
puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

player_score = 0
computer_score = 0

loop do
  player = ''

  loop do
    puts 'Please select Rock, Paper, Scissors, Lizard or Spock.'
    player = gets.chomp.downcase
    break if VALID_CHOICES.include?(player)
    puts 'Please make a valid selection.'
  end

  puts "You have chosen #{player.capitalize}."

  computer = VALID_CHOICES.sample
  puts "The Computer chooses #{computer.capitalize}."

  if player == computer
    puts 'It\'s a Draw.'
  elsif player == 'rock' && (computer == 'scissors' || computer == 'lizard')
    puts 'You Win.'
    player_score += 1
  elsif player == 'paper' && (computer == 'rock' || computer == 'spock')
    puts 'You Win.'
    player_score += 1
  elsif player == 'scissors' && (computer == 'paper' || computer == 'lizard')
    puts 'You Win.'
    player_score += 1
  elsif player == 'lizard' && (computer ==
    'paper' || computer == 'spock')
    puts 'You Win.'
    player_score += 1
  elsif player == 'spock' && (computer ==
    'scissors' || computer == 'rock')
    puts 'You Win.'
    player_score += 1
  else
    puts 'You Lose.'
    computer_score += 1
  end

  puts "You have #{player_score} points"
  puts "The Computer has #{computer_score} points."

  puts 'Would you like to play again? (Y/N)'
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

