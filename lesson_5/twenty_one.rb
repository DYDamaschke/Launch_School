require 'pry'

VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'Jack', 'Queen', 'King', 'Ace']
SUITS = ['Hearts', 'Clubs', 'Spades', 'Diamonds']

def prompt(message)
  puts "=> #{message}"
end

def card_totals(cards)
  values = cards.map { |card| card[1] }

  total = 0
  values.each do |value|
    if value == 'Ace'
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value
    end
  end

  values.select { |value| value == 'Ace' }.count.times do
    total -= 10 if total > 21
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
  card_totals(cards) > 21
end

def detect_winner(player, dealer)
  player = card_totals(player)
  dealer = card_totals(dealer)

  return :player_busted if player > 21
  return :dealer_busted if dealer > 21
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
    break if action.downcase == 'n' || action == 'y'
    prompt "Please enter 'y' for yes or 'n' for no."
  end

  action == 'y'
end

action = nil

loop do
  system "clear" || system "cls"

  puts "==========================="
  puts "Welcome to Twenty One!"
  puts "==========================="

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
  puts "#{dealer_hand[0][1]} of #{dealer_hand[0][0]}"
  puts "?"

  loop do
    prompt "Your total is #{card_totals(player_hand)}," +
    " press 1 to hit or 2 to stay:"
    action = gets.chomp.to_i

    loop do
      if action == 1 || action == 2
        break
      else
        prompt "Please enter 1 to hit or 2 to stay."
        action = gets.chomp.to_i
      end
    end

    if action == 1
      player_hand << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are: "
      puts display_cards(player_hand)
    end

    break if action == 2 || busted?(player_hand)
  end

  if busted?(player_hand)
    puts "==========================="
    prompt "Your total is #{card_totals(player_hand)}"
    puts "==========================="
    display_winner(player_hand, dealer_hand)
    play_again? ? next : break
  else
    prompt "You stayed, your cards are: "
    puts display_cards(player_hand)
    puts "==========================="
    prompt "Your total is #{card_totals(player_hand)}"
    puts "==========================="
  end

  prompt "Dealer turn..."

  loop do
    break if card_totals(dealer_hand) >= 17

    dealer_hand << deck.pop
    prompt "Dealer drew "
    puts display_cards(dealer_hand)
  end

  if busted?(dealer_hand)
    puts "==========================="
    prompt "Dealer total is #{card_totals(dealer_hand)}"
    puts "==========================="
    display_winner(player_hand, dealer_hand)
    play_again? ? next : break
  else
    puts "==========================="
    prompt "Dealer stays at #{card_totals(dealer_hand)}"
    puts "==========================="
  end

  puts "==========================="
  prompt "Dealer total is #{card_totals(dealer_hand)}"
  prompt "Player total is #{card_totals(player_hand)}"
  puts "==========================="

  display_winner(player_hand, dealer_hand)

  break unless play_again?
end

prompt "Thanks for playing!"
