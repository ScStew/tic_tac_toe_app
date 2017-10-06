
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
    other_player = player_class.other_player
    choice = ""
    
    board.each_pair do |key,value|
        if key == value
            board_class.update(other_player,key)
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





def first_move(board)
    choice = ''
    if board.values.include?('x')
        board.each_pair do |key,value|
            if key != value
                if key.to_i % 2 == 0
                   choice = key_edge_seperator(key)
                elsif key.to_i % 2 == 1 && key.to_i != 5
                    choice = "5"
                else
                    choice = "7"
                end
            end
        end
    else
        choice = "7"
    end
    choice
end


def second_move(board,player)
    player_class = Player.new
    player_class.player = player
    counter = 0
        board.each_pair do |key,value|
            if value == other_player
                counter += 1
            end
        end
    if counter == 1
        choice = third_action(board)
    else
        choice = fourth_action(board,player)
    end
    
end


def third_action(board,player)
    player_class = Player.new
    player_class.player = player
    other_player = player_class.change_players
    choice = "" 

        board.each_pair do |key,value|
            if value == other_player
                if value == "5"
                    choice = "3"    
                else
                    choice = "5"
                end
            end
        end
        choice

end


        
        
def fourth_action(board,player)
    player_arr = []
    player_class = Player.new
    player_class.player = player
    other_player = player_class.change_players
    
       
    board.each_pair do |key,value|
        if value == other_player
            player_arr << key
        end
        # p player_arr
    end
    # p player_arr
    if player_arr[0].to_i % 2 == 0 && player_arr[1].to_i % 2 == 0
         choice = "5"
    elsif player_arr.include?("3") == true && player_arr.include?("5") == true
        choice = "1"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 1 && player_arr.include?("5") == false
         choice = "1"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 1 && player_arr.include?("5") == true
        choice = "2"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 0 && player_arr.include?("5") == false || player_arr[0].to_i % 2 == 0 && player_arr[1].to_i % 2 == 1 && player_arr.include?("5") == false
        choice = "5"
    end
end
        
    
        
            
