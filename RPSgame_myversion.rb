# Rock Paper Scissors Lizard Spock Game

# I wrote the initial pre Lizard Spock version of this before
# doing the code along version , and decided to attempt to
# fully modify it.

VALID_CHOICES =
  %w(rock paper scissors lizard spock).freeze

puts 'Welcome to Rock Paper Scissors Lizard Spock'
puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts 'First to Five Points Wins!'

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
    puts 'You Win This Round.'
    player_score += 1
  elsif player == 'paper' && (computer == 'rock' || computer == 'spock')
    puts 'You Win This Round.'
    player_score += 1
  elsif player == 'scissors' && (computer == 'paper' || computer == 'lizard')
    puts 'You Win This Round.'
    player_score += 1
  elsif player == 'lizard' && (computer ==
    'paper' || computer == 'spock')
    puts 'You Win This Round.'
    player_score += 1
  elsif player == 'spock' && (computer ==
    'scissors' || computer == 'rock')
    puts 'You Win This Round.'
    player_score += 1
  else
    puts 'You Lose This Round.'
    computer_score += 1
  end

  puts "You have #{player_score} points"
  puts "The Computer has #{computer_score} points."

  if player_score == 5
    puts 'You reached Five Points, You Won!'
  elsif computer_score == 5
    puts 'The Computer reached Five Points, You Lose!'
  end

  break if player_score == 5 || computer_score == 5

  puts 'Would you like to go another round?(Y/N)'
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

