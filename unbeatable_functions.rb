
require_relative "board.rb"

def winning_move(board,player)
    board_class = Board.new
    board_class.game_board = board
    choice = ""
    board.each_pair do |key,value|
        if key == value
            key.update(player,key)
            if board_class.winner? == true
                choice = key
            end
            key.update(key,key)    
        end
    end
    if choice == ""
        choice = false
    end
    choice        
end