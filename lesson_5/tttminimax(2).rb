require 'pry'
INIT_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = 'choose'

WINNING_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def show_brd(moves, player, comp, message)
  system('cls') || system('clear')
  puts "SCORE:\n" \
       "Player(X): #{player} | Computer(O): #{comp}"
  prompt message
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
  (1..9).each { |square| new_board[square] = INIT_MARKER }
  new_board
end

def empty_squares(brd)
  brd.select { |_square, marker| marker == INIT_MARKER }
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
    prompt("Please choose a square: #{joiner(empty_squares(brd).keys)}.")
    player_marker = gets.to_i
    break if empty_squares(brd).include?(player_marker)

    prompt("Sorry, that's not a valid choice.")
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

def minimax_move_score(board, origin, score=0)
  player_win = display_winner(board) == "Player won!"
  computer_win = display_winner(board) == "Computer won!"
  origin_open_moves = origin.values.count(' ')
  score -= 10 + board.values.count(' ') if player_win
    if player_win && (board.values.count(' ') == origin_open_moves - 1)
      score += 10
    end
  score += 10 + board.values.count(' ') if computer_win
    if computer_win && (board.values.count(' ') == origin_open_moves - 1)
      score += 15
    end
    binding.pry
  score
end

def return_minimax_score(scores, open_moves)
  binding.pry
  if (scores[0] > 0) || (scores[1] > 0)
    return scores
  elsif (scores[0] < 0) || (scores[1] < 0)
    return scores
  elsif open_moves.empty?
    return scores
  else
    return nil
  end
  nil
end

def minimax(square, board, origin, player=[COMPUTER_MARKER, PLAYER_MARKER])
  scores = []
  board[square] = player[0]
  open_moves = empty_squares(board)
  comp_score = minimax_move_score(board, origin)

  board[square] = player[1]
  player_score = minimax_move_score(board, origin)
  scores[0, 1] = comp_score, player_score
binding.pry
  if return_minimax_score(scores, open_moves)
    return scores
  else

    open_moves.each do |sub_square, _marker|
      scores = minimax(sub_square, board, origin)
    end
  end

scores
end

def minimax_call(board)
  board_state = {}
  board_state = board_state.merge(board)
  free_squares = empty_squares(board_state)

  free_squares.each_with_object({}) do |(square, _marker), score_list|
    score_list[square] = minimax(square, board_state, board)
    binding.pry
  end
end

def best_move(board)
  #moves = computer_find_move(board, PLAYER_MARKER)
  moves = minimax_call(board) if !moves
  binding.pry
  moves.is_a?(Hash) ? moves.key(moves.values.max) : moves
end

def computer_place_marker!(brd)
  comp_marker = best_move(brd) if !comp_marker

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
    prompt "Enter a number to choose the first player: " \
      "Player = 1 | computer = 2"
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

player_order_list = [1, 2]
player_order!(player_order_list)

loop do
  computer_score = 0
  player_score = 0
  welcome = "Welcome to Tic-Tac-Toe! First player to win 5 rounds wins!"

  loop do
    board = initialize_board

    loop do
      show_brd(board, player_score, computer_score, welcome)
      make_a_move(player_order_list[0], board)
      player_order_list.rotate!
      break if player_won?(board) || board_full?(board)
    end

    if display_winner(board) == "Player won!"
      player_score += 1
      round_winner = display_winner(board)
    elsif display_winner(board) == "Computer won!"
      computer_score += 1
      round_winner = display_winner(board)
    else
      round_winner = "It was a tie!"
    end

    show_brd(board, player_score, computer_score, round_winner)
    break puts display_winner(board) if player_score == 5 || computer_score == 5

    prompt "Press enter to continue to the next round, or type exit to end."
    continue = gets.chomp.downcase
    break if continue == 'exit'
  end

  prompt("Would you like to play again? (Y/N)")
  play_again = gets.chomp.downcase
  break if play_again == 'n'
end

puts "Thank you for playing. Good bye!"
