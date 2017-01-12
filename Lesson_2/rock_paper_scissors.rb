VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'l' => 'lizard',
                  'sp' => 'spock' }

WINNING_LIST = { 'rock' => %w(scissors lizard),
                  'paper' => %w(rock spock),
                  'scissors' => %w(paper lizard),
                  'spock' => %w(rock scissors),
                  'lizard' => %w(spock paper) }

def prompt(message)
  puts "=> #{message}"
end

def won?(first, second)
  WINNING_LIST.fetch(first).include?(second)
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

def display_results(player, computer)
  if won?(player, computer)
    prompt("You won!\n")
  elsif won?(computer, player)
    prompt("Computer won!\n")
  else
    prompt("It's a tie!\n")
  end
end

loop do
  player = ''
  player_score = 0
  computer_score = 0
  5.times do
    loop do
      prompt("PLAYER SCORE: #{player_score} / COMPUTER SCORE: #{computer_score}")
      prompt("Choose one: (r) rock, (p) paper, (sc) scissors, 
        (sp) spock, (l) lizard.\n\n")
      player = gets.chomp

      if VALID_CHOICES.include?(player)
        player = VALID_CHOICES.fetch(player)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer = VALID_CHOICES.values.sample

    prompt("You chose: #{player}; Computer chose: #{computer}")

    display_results(player, computer)
    if won?(player, computer)
      player_score += 1
    elsif won?(computer, player)
      computer_score += 1
    end

    system 'clear'
  end
  victory(player_score, computer_score)
  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
