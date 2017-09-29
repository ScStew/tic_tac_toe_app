require_relative "board.rb"
require_relative "player.rb"
class Hard_ai

    
    
    
    def move(board)
        board_class = Board.new
        player_class = Player.new
        open_spaces = []
        
        board.each_pair do |key,value|
            if key == value
                open_spaces << key
            end
        end

    end
end