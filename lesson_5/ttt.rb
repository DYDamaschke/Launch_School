INIT_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = 'player'

WINNING_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def show_brd(moves, player, comp)
  system 'clear'
  puts "SCORE:\n" \
       "Player(X): #{player} | Computer(O): #{comp}"
  puts ""
  puts "     |     |"
  puts "  #{moves[1]}  |  #{moves[2]}  |  #{moves[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{moves[4]}  |  #{moves[5]}  |  #{moves[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{moves[7]}  |  #{moves[8]}  |  #{moves[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = Hash.new
  (1..9).each { |num| new_board[num] = INIT_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INIT_MARKER }
end

def joiner(list, delimiter=', ', word='or')
  case list.size
  when 0 then ''
  when 1 then list.first
  when 2 then list.join(" #{word} ")
  else
    list[-1] = "#{word} #{list.last}"
    list.join(delimiter)
  end
end

def player_place_marker!(brd)
  player_marker = ''
  loop do
    prompt("Please choose a square: #{joiner(empty_squares(brd))}.")
    player_marker = gets.to_i
    break if empty_squares(brd).include?(player_marker)

    puts "Sorry, that's not a valid choice."
  end
  brd[player_marker] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  square = brd.select { |k, v| line.include?(k) && v == INIT_MARKER }.keys.first
  return square unless brd.values_at(*line).count(marker) != 2
end

def computer_find_move(brd, marker)
  comp_marker = nil
  WINNING_COMBO.each do |line|
    comp_marker = find_at_risk_square(line, brd, marker)
    break if comp_marker
  end
  comp_marker
end

def computer_place_marker!(brd)
  comp_marker = computer_find_move(brd, COMPUTER_MARKER)

  comp_marker = computer_find_move(brd, PLAYER_MARKER) if !comp_marker

  comp_marker = 5 if !comp_marker && brd[5] == ' '

  comp_marker = empty_squares(brd).sample if !comp_marker

  brd[comp_marker] = COMPUTER_MARKER
end

def make_a_move(player, brd)
  if player == 1
    player_place_marker!(brd)
  else
    computer_place_marker!(brd)
  end
end

def player_order!(player_list)
  if FIRST_PLAYER == 'choose'
    puts "Enter a number for the first player: Player = 1 | computer = 2"
    player = gets.to_i
    if player == 2
      player_list.rotate!(1)
    end
  elsif FIRST_PLAYER == 'computer'
    player_list.rotate!(1)
  end
end

def display_winner(brd)
  WINNING_COMBO.each do |combo|
    return "Player won!" unless brd.values_at(*combo).count('X') != 3
    return "Computer won!" unless brd.values_at(*combo).count('O') != 3
  end
  nil
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def player_won?(brd)
  !!display_winner(brd)
end

loop do
  computer_score = 0
  player_score = 0

  loop do
    board = initialize_board
    player_order_list = [1, 2]
    player_order!(player_order_list)

    loop do
      show_brd(board, player_score, computer_score)
      make_a_move(player_order_list[0], board)
      player_order_list.rotate!
      break if player_won?(board) || board_full?(board)
    end

    show_brd(board, player_score, computer_score)
    if display_winner(board) == "Player won!"
      player_score += 1
    elsif display_winner(board) == "Computer won!"
      computer_score += 1
    end

    break puts display_winner(board) if player_score == 5 || computer_score == 5
  end

  prompt("Would you like to play again? (Y/N)")
  play_again = gets.chomp.downcase
  break if play_again == 'n'
end

puts "Thank you for playing. Good bye!"
