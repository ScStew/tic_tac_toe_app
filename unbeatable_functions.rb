
require_relative "board.rb"
require_relative "player.rb"

def winning_move(board,player)
    board_class = Board.new
    board_class.game_board = board
    choice = ""
    board.each_pair do |key,value|
        if key == value
            board_class.update(player,key)
            if board_class.winner? == true
                choice = key
            end
            board_class.update(key,key)    
        end
    end
    if choice == ""
        choice = false
    end
    choice        
end

def blocking_move(board,player)
    player_class = Player.new
    player_class.player = player
    board_class = Board.new
    board_class.game_board = board
    player = player_class.change_players
    choice = ""
    
    board.each_pair do |key,value|
        if key == value
            board_class.update(player,key)
            if board_class.winner? == true
                choice = key
            end
            board_class.update(key,key)    
        end
    end
    if choice == ""
        choice = false
    end
    choice  
end     
