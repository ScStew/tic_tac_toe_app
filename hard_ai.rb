require_relative "board.rb"
require_relative "player.rb"
class Hard_ai

    
    
    
    def move(board)
        board_class = Board.new
        player_class = Player.new
        open_spaces = []
        win_move_arr = []
        block_move_arr = 
        
        board.each_pair do |key,value|
            if key == value
                open_spaces << key
            end
        end
        open_spaces.each do |possible_choices|
            board.update(player_class.player,possible_choices)
            if board.winner? == true
                win_move_arr << possible_choices
    end
end