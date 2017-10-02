require_relative "board.rb"
require_relative "player.rb"
class Hard_ai
    
   
    
    
    def move(board)
        board = board
        player_class = Player.new
        board_class = Board.new
        open_spaces = []
        win_move_arr = []
        block_move_arr = []
        choice = []
        player_class.player = "o"
        board_class.game_board = board
        board.each_pair do |key,value|
            if key == value
                open_spaces << key
            end
        end
        # p open_spaces
        open_spaces.each do |possible_choices|
            board_class.update(player_class.player,possible_choices)
            #  p board_class.game_board
            if board_class.winner? == true
                win_move_arr << possible_choices
            end
            player_class.change_players
            board_class.update(player_class.player,possible_choices)
            #  p board_class.game_board
            if board_class.winner? == true
                block_move_arr << possible_choices
            end
            player_class.change_players
            board_class.update(possible_choices,possible_choices)
        end
        # p "#{win_move_arr}!!!!!!!!!"
        # p block_move_arr
        if win_move_arr.empty? == false
            choice << win_move_arr[0]
        elsif block_move_arr.empty? == false && win_move_arr.empty? == true
            choice << block_move_arr[0]
        end
        
            # p choice
            players_move = []
            if choice.any? == false
                # p "made it here"
                board.each_pair do |key,value|
                    if value == "x"
                        players_move << key
                    end
                end
                    if players_move.length == 1
                        if players_move[0].to_i % 2 == 0
                            if players_move[0] == "2" ||players_move[0] == "4"
                                choice = "1"
                            elsif players_move[0] == "6" ||players_move[0] == "8"
                                choice = "9"
                            end

                        elsif players_move[0].to_i % 2 == 1 && players_move[0] != "5" 
                        #    p "made it here"
                            choice = "5"

                        else
                            choice = "7"
                        end
                    end

                    if players_move.length == 2
                        if players_move[0].to_i % 2 == 0 && players_move[1].to_i % 2 == 0
                            choice = "5"
                        elsif players_move[0].to_i % 2 == 1 && players_move[1].to_i % 2 == 1
                            choice = "2"
                        elsif players_move[0].to_i % 2 == 1 && players_move[1].to_i % 2 == 0 && players_move.include?("5") == false|| players_move[0].to_i % 2 == 0 && players_move[1].to_i % 2 == 1 && players_move.include?("5") == false
                            choice = "5"
                        end
                    end
                        # p open_spaces
                        # p players_move.length
                    if players_move.length >= 3
                        # p open_spaces
                        choice << open_spaces.sample
                    end

                    # p "#{choice}"
                
                end
                
                choice[0]            
        
        # p win_move_arr
        # p block_move_arr
    end
end
# Hard_ai.new.move({"1"=> "o","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"})