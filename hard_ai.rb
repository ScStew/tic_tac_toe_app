require_relative "board.rb"
require_relative "player.rb"
class Hard_ai
    
    
    
    
    def move(board)
        board_class = Board.new
        # board_class.update("o","1")
        # board_class.update("o","5")
        player_class = Player.new
        open_spaces = []
        win_move_arr = []
        block_move_arr = []
        
        board.each_pair do |key,value|
            if key == value
                open_spaces << key
            end
        end
        p open_spaces
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

        # p win_move_arr
        # p block_move_arr
    end
end
Hard_ai.new.move({"1"=> "o","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"})