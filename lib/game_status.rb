# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =
[
  [0,1,2],
  [3,4,5],
  [6,7,8],

  [0,3,6],
  [1,4,7],
  [2,5,8],

  [0,4,8],
  [2,4,6]
]

def won?(board)

  WIN_COMBINATIONS.each do |win_index|
      win_index_1 = win_index[0]
      win_index_2 = win_index[1]
      win_index_3 = win_index[2]

      board_position_1 = board[win_index_1]
      board_position_2 = board[win_index_2]
      board_position_3 = board[win_index_3]

      break if board_position_1 =="X" && board_position_2 == "X" && board_position_3 =="X" ||
        board_position_1 =="O" && board_position_2 == "O" && board_position_3 =="O"
        return win_index
      else
        false
      end
  end
end
