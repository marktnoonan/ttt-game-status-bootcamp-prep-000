# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [7,8,9],
  [0,3,7],
  [1,4,8],
  [2,5,9],
  [0,4,9],
  [2,4,7]
  ]