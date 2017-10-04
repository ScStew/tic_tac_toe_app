
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
    player_class.change_players
    player = player_class.player
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

def key_edge_seperator(key)
    if key == "2" || key == "4"
        "1"
    elsif key == "6" || key == "8"
        "9"
    end
end





def first_move(board,player)

    if board.values.include?('x')
        board.each_pair do |key,values|
            if key != value
                if key.to_i % 2 == 0
                   choice = key_edge_seperator(key)
                elsif key.to_i % 2 == 1 && key.to_i != 5
                    choice = key_corner_seperator(key)
                end
            end
        end
    else
        choice = "7"
    end
end

        
        

        
    
        
            
