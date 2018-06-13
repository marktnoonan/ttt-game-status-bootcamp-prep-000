# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  row_contents = []

def won?(board) 
  WIN_COMBINATIONS.each do |combination|
    combination.each do |index|
      if position_taken?(board, index)
        row_contents << board[index]
      end  
    end
      if (row_contents[0] == row_contents[1] && row_contents[1] == row_contents[2] && (row_contents[0] == "X" || row_contents[0] == "O"))
        return combination
      else
      return false
    end
  end
end

