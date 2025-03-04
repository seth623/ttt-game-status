# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], 
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
]

#Won?
def won?(board)
  #X
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    end
  end

  #O
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
return false
end

#Full?
def full?(board)
  !(board.include?(" " || "" || nil)) 
end

#Draw?
def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif
    full?(board) == true && won?(board) == true 
    return false
  elsif full?(board) == false && won?(board) == false
    return false
  elsif won?(board) == true 
    return false
  end  
end

#Over?
def over?(board)
  if won?(board) != false 
    return true
  elsif full?(board) == true
    return true
  elsif draw?(board) == true 
    return true 
  else
    return false
  end  
end

#Winner
def winner(board)
  #X
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return "X"
    end
  end

  #O
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return "O"
    end
  end
return nil 
end 