# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # top-right to bottom-left diagonal
  [2,4,6], # top-left to bottom-right diagonal
]

def won?(board)
  won = false
  WIN_COMBINATIONS.each do |combo|
    position_values = [
      board[combo[0]],
      board[combo[1]],
      board[combo[2]]
    ]
    if position_values == ["X","X","X"] || position_values == ["O","O","O"]
      won = true
    end
  end
  #won
end

board = ["X", " ", "O", "X", " ", "O", "X", " ", " "]
puts won?(board)