# require 'pry'
def display_board( board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index( user_input)
  value = user_input.to_i-1
end

def move( array, index, value = "X")
  array[index] = value
end

def position_taken?( board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def valid_move?( board, position)
  if position.to_i.between?(0,8)
    if !position_taken?(board, position)
      true
    end
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  board_position = input_to_index(user_input)
  if valid_move?( board, board_position)
    puts "Valid Move"
    board = move(board, board_position)
    display_board(board)
  else
    puts "Sad"
  end
end
