require 'pry'
def display_board( board) #board is the argument that this method will return - board is already a predefined array that it is referencing
  puts " #{board[0]} | #{board[1]} | #{board[2]} " #this creates the first line of our TTT board
  puts "-----------"                               #this creates the second line of our TTT board
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index( user_input) #this creates a method called input_to_index and defines user_input as the one argument
  value = user_input.to_i-1 #this line sets a varaible called "value" equal to the user_input argument and then converts it to an integer and subtracts one
end

def move(array, index, value = "X") #this creates a method called move that accepts 3 arguments 1) the array being edited, 2) the location within the index, 3) the new value of that will replace the previous value within the array, and sets a default value of "X" if no other value is given
  array[index] = value
end

#def valid_move?(board, index)
#  index.between(1,9) && position_taken?(array, index)
#end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  if position.to_i.between?(0,8)
    if !position_taken?(board, position)
      true
    end
  end
end
