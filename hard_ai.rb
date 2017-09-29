require_relative "board.rb"
require_relative "player.rb"
class Hard_ai

    def move(board)
        board = Board.new
        player - player.new
        open_moves = []
        board.each_pair do |key, value|
            if key == value
                open_moves << value
            end
        end
        choice = ""
        choice_arr = []
        block = []
        open_moves.each do |possible_choice|
        board.update(player.player,possible_choice)
            if board.winner? == true
                choice_arr << possible_choice
            end
        player.change_players
        board.update(player,possible_choice)
            if board.winner? == true
                block << possible_choice
            end
        board.update(possible_choice,possible_choice)
        player.change_players       
        end

        if choice_arr.any? == true
            choice = choice_arr[0]
        elsif block.any? == true
            choice = block[0]
        else
            counter = 0
            choice_steps = []
                if board.firstmove == "7" || board.firstmove == "3" ||board.firstmove == "9" ||board.firstmove == "1"
                choice_steps = ["5","6","2","8","4"]
                elsif board.firstmove == "4" || board.firstmove == "8" ||board.firstmove == "6" ||board.firstmove == "2"
                choice_steps = ["5","7","3","9","1"]
                else
                    choice_steps = ["7","","9","1"]
                end
            
            choice_steps.each do |posibble_choice|
                if valid_spot?(possible_choice) == true
                    choice_arr << possible_choice
                end
            end
            choice = choice_arr.sample

        end 


    choice
                

    end

end