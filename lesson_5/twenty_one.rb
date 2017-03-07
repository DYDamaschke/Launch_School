VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'Jack', 'Queen', 'King', 'Ace']
SUITS = ['Hearts', 'Clubs', 'Spades', 'Diamonds']
MAXIMUM_SCORE = 21
MINIMUM_DEALER_SCORE = 17

def prompt(message)
  puts "=> #{message}"
end

def master_prompt(message)
  puts "==========================="
  puts message
  puts "==========================="
end

def secondary_prompt(message)
  puts "---------------------------"
  puts message
  puts "---------------------------"
end

def card_totals(cards)
  values = cards.map { |card| card[1] }

  total = 0
  values.each do |value|
    total += 11 if value == 'Ace'
    total += 10 if value.to_i == 0
    total += value if value.to_i > 0
  end

  values.select { |value| value == 'Ace' }.count.times do
    total -= 10 if total > MAXIMUM_SCORE
  end

  total
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def display_cards(current_hand, show='all')
  current_hand.each do |card|
    puts "#{card[1]} of #{card[0]}"
    break if show == 1
  end
  nil
end

def busted?(cards)
  card_totals(cards) > MAXIMUM_SCORE
end

def detect_winner(player, dealer)
  player = card_totals(player)
  dealer = card_totals(dealer)

  return :player_busted if player > MAXIMUM_SCORE
  return :dealer_busted if dealer > MAXIMUM_SCORE
  return :player_won if player > dealer
  return :dealer_won if player < dealer
  :tie
end

def display_winner(player, dealer)
  result = detect_winner(player, dealer)

  case result
  when :dealer_busted
    prompt "Dealer busted! Player won!"
  when :player_busted
    prompt "You busted! Dealer won!"
  when :player_won
    prompt "You won!"
  when :dealer_won
    prompt "Dealer won!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  prompt "Would you like to play again? (y/n)"
  action = nil

  loop do
    action = gets.chomp
    break if action.casecmp('n') == 0 || action.casecmp('y') == 0
    prompt "Please enter 'y' for yes or 'n' for no."
  end

  action == 'y'
end

def continue?
  prompt "Press <enter> to continue or 'Q' to quit."
  continue = false

  loop do
    continue = gets.chomp
    break if continue.casecmp('q') == 0 || continue == ''
    prompt "Please press <enter> or 'Q'."
  end

  continue == ''
end

action = nil
player_score = 0
dealer_score = 0

loop do
  until player_score == 5 || dealer_score == 5
    (system "clear") || (system "cls")

    master_prompt "Welcome to Twenty One!"
    prompt "Player Score: #{player_score} | Dealer Score: #{dealer_score}"

    deck = initialize_deck
    player_hand = Array.new
    dealer_hand = Array.new

    2.times do
      player_hand << deck.pop
      dealer_hand << deck.pop
    end

    prompt "Your cards are: "
    puts "#{display_cards(player_hand)}\n"

    prompt "The dealer drew: "
    puts "#{dealer_hand[0][1]} of #{dealer_hand[0][0]}\n'?'"

    loop do
      secondary_prompt "Your total is #{card_totals(player_hand)}." \
             "\nPress 1 to hit or 2 to stay:"
      action = gets.chomp.to_i

      loop do
        break if action == 1 || action == 2
        secondary_prompt "Please enter 1 to hit or 2 to stay."
        action = gets.chomp.to_i
      end

      if action == 1
        player_hand << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are: "
        puts display_cards(player_hand)
      end

      break if action == 2 || busted?(player_hand)
    end

    player_total = card_totals(player_hand)

    if busted?(player_hand)
      master_prompt "Your total is #{player_total}"
      display_winner(player_hand, dealer_hand)
      dealer_score += 1
      next if continue?
      action = 'quit'
      break
    else
      prompt "You stayed, your total is #{player_total}"
    end

    prompt "Dealer turn..."

    prompt "Dealer's cards are: "
    puts display_cards(dealer_hand)

    loop do
      break if card_totals(dealer_hand) >= MINIMUM_DEALER_SCORE
      dealer_hand << deck.pop
      prompt "Dealer drew "
      puts display_cards(dealer_hand)
    end

    dealer_total = card_totals(dealer_hand)

    if busted?(dealer_hand)
      master_prompt "Dealer total is #{dealer_total}"
      display_winner(player_hand, dealer_hand)
      player_score += 1
      next if continue?
      action = 'quit'
      break
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    master_prompt "Dealer total is #{dealer_total}" \
                  "\nPlayer total is #{player_total}"

    display_winner(player_hand, dealer_hand)

    winner = detect_winner(player_hand, dealer_hand)
    player_score += 1 if winner == :player_won
    dealer_score += 1 if winner == :dealer_won

    next if continue?
    action = 'quit'
    break
  end

  break if action == 'quit'
  break unless play_again?
end

prompt "Thanks for playing!"
