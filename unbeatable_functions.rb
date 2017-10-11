
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
    if player == "x"
        other_player = "o"
    else
        other_player = "x"
    end
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
    other_player = player_class.change_players
    s_counter = 0
        board.each_pair do |key,value|
            if value == other_player
                s_counter += 1
            end
        end
    if s_counter == 1
        choice = third_action(board,player)
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
                # p key
                if key == "5"
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
    #  p player_arr
    if player_arr[0].to_i % 2 == 0 && player_arr[1].to_i % 2 == 0
         choice = "5"
        #  p "outcome 1"
    elsif player_arr.include?("3") == true && player_arr.include?("5") == true
        choice = "1"
        # p "outcome 2"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 1 && player_arr.include?("5") == false
        choice = "2"
        #  p "outcome 3"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 1 && player_arr.include?("5") == true
        choice = "1"
        # p "outcome 4"
    elsif player_arr.include?("5") == true && player_arr?("4") == true && board.values.include?("1") == false && board.values.include?("7")
        choice = "2"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 0 && board.values.include?("5") == true || player_arr[0].to_i % 2 == 0 && player_arr[1].to_i % 2 == 1 && board.values.include?("5") == true
        choice = "5"
        # p "outcome 5"
    elsif player_arr[0].to_i % 2 == 1 && player_arr[1].to_i % 2 == 0 && board.values.include?("5") == false || player_arr[0].to_i % 2 == 0 && player_arr[1].to_i % 2 == 1 && board.values.include?("5") == false
       bad = ""
        until bad == "good" do
        choice = ["1","3","7","9"].sample
            if board[choice] == choice
                bad = "good"
            end
        end

    end
end


def third_move(board,player)

    if player == "o"
        random_choice(board)
    else
        fifth_action(board,player)
    end
            

end

def fifth_action(board,player)
  players_move = []
  other_players_move = []
  choice = ""
    board.each_pair do |key,value|
        if value == player
            players_move << key
        elsif value != key && value != player
            other_players_move << key
        end
    end
    # p players_move.length
    if players_move.length == 2
        if players_move.include?("5") == true && other_players_move.include?("4") == true
            choice = "9"
        elsif players_move.include?("5") == true && other_players_move.include?("8") == true
            choice = "1"
        elsif players_move.include?("5") == false && other_players_move.include?("1") == true
            choice = "9"
        elsif players_move.include?("5") == false && other_players_move.include?("9") == true
            choice = "1"
        else
            random_choice(board)
        end
    else
        random_choice(board)
    end
        

end

def random_choice(board)
    ran_arr = []
    board.each_pair do |key, value|
        if key == value
            ran_arr << key
        end
    end
    ran_arr.sample

end
        
    
        
            
