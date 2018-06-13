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
  
  ROW_CONTENTS = []

def won?(board) 
  ROW_CONTENTS.clear
  WIN_COMBINATIONS.each do |combination|
    combination.each do |index|
      if position_taken?(board, index)
        ROW_CONTENTS << board[index]
      end  
    end
      if (ROW_CONTENTS[0] == ROW_CONTENTS[1] && ROW_CONTENTS[1] == ROW_CONTENTS[2] && (ROW_CONTENTS[0] == "X" || ROW_CONTENTS[0] == "O"))
        return combination
    end
  end
  return false
end

