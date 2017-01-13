VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'l' => 'lizard',
                  'sp' => 'spock' }

WINNING_LIST = {  'rock' => %w(scissors lizard),
                  'paper' => %w(rock spock),
                  'scissors' => %w(paper lizard),
                  'spock' => %w(rock scissors),
                  'lizard' => %w(spock paper) }

def prompt(message)
  puts "=> #{message}"
end

def welcome
  prompt("Welcome to Rock, Paper, Scissors! Choose One:\n
    (r) rock, (p) paper, (sc) scissors, (sp) spock, (l) lizard.\n\n")
end

def won?(first, second)
  WINNING_LIST.fetch(first).include?(second)
end

def display_results(player, computer)
  if won?(player, computer)
    prompt("You won!")
  elsif won?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def victory(player, computer)
  if player > computer
    prompt("You beat the computer!")
  elsif computer > player
    prompt("The computer won!")
  else
    prompt("It was a tie!")
  end
end

player = ''

loop do
  player_score = 0
  computer_score = 0
  welcome

  5.times do
    loop do
      player = gets.chomp
      break if VALID_CHOICES.include?(player)
      prompt("That's not a valid choice.")
    end

    computer = VALID_CHOICES.values.sample
    player = VALID_CHOICES.fetch(player)
    prompt("You chose: #{player}; Computer chose: #{computer}")

    display_results(player, computer)
    player_score += 1 if won?(player, computer)
    computer_score += 1 if won?(computer, player)

    prompt("PLAYER: #{player_score} / COMPUTER: #{computer_score}\n")
  end

  victory(player_score, computer_score)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  system "clear" unless system "cls"
end

prompt("Thank you for playing. Good bye!")
