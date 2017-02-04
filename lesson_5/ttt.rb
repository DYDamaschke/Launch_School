INIT_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
	puts "=> #{msg}"
end

def display_board(moves)
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

def winning_combo(brd)
	winning_combo = [brd.values_at(1, 2, 3),
								   brd.values_at(4, 5, 6),
								   brd.values_at(7, 8, 9),
								   brd.values_at(1, 5, 9),
								   brd.values_at(7, 5, 3),
								   brd.values_at(1, 4, 7),
								   brd.values_at(2, 5, 8),
								   brd.values_at(3, 6, 9)]

	winning_combo
end

def display_winner(brd, marker)
	winner = Array.new(3, marker)
	winning_combo(brd).any? {|combo| combo == winner}

end

def initialize_board
new_board = Hash.new 
(1..9).each { |num| new_board[num] = INIT_MARKER }
new_board
end

def empty_squares(brd)
	brd.keys.select {|num| brd[num] == INIT_MARKER }
end

def place_marker!(brd)
	player_marker = ''
  loop do
		prompt("Please enter #{empty_squares(brd).join}.")
		player_marker = gets.to_i
		break if empty_squares(brd).include?(player_marker)
		prompt("Sorry, that's not a valid choice.")
	end
	brd[player_marker] = PLAYER_MARKER
end

board = initialize_board
display_board(board)

loop do 
	place_marker!(board)
	prompt("You played: ")
	display_board(board)

	comp_marker = empty_squares(board).sample
	board[comp_marker] = COMPUTER_MARKER
	prompt("The computer played: ")
	display_board(board)

	if display_winner(board, PLAYER_MARKER)
		prompt("You won!")
		break
	elsif display_winner(board, COMPUTER_MARKER)
		prompt("The computer won!")
		break
	elsif empty_squares(board).empty?
		prompt("It was a tie!")
		break
	end
end