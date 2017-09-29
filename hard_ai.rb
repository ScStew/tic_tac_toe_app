require_relative "board.rb"
require_relative "player.rb"
class Hard_ai

    def move(board)
        board_class = Board.new
        player - player.new
        open_moves = []
        board.each_pair do |key, value|
            if key == value
                open_moves << value
            end
        end
        choice = []
        block = []
        open_moves.each do |possible_choice|
        board.update(player.player,possible_choice)
            if board.winner? == true
                choice << possible_choice
            end
        board.update(possible_choice,possible_choice)
        end

        
                

    end

end