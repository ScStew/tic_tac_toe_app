require_relative "board.rb"
require_relative "player.rb"
class Hard_ai
    attr_accessor :firstmove
    
    def initalize
    @firstmove = nil
    
    end
    
    def move(board)
        board = Board.new
        player = Player.new
        open_moves = []
        choice = ""
        choice_arr = []
        block = []
        x_or_o = player.player
        board.game_board.each_pair do |key,value|
            if key == value
            open_moves << key
            end
        end
        open_moves.each do |possible_choice|
        board.update(x_or_o,possible_choice)
       
            if board.winner? == true
                choice_arr << possible_choice
            end
        player.change_players
        x_or_o = player.player
        board.update(x_or_o,possible_choice)
        
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
            woo_choice_arr = []
            counter = 0
            choice_steps = []
            if @firstmove == nil
                gboard = board.game_board
                gboard.each_pair do |key, value|
                    if value == "x"
                        @firstmove = key
                    else
                    
                    end
                end
            end

                p @firstmove
                if @firstmove == "7" || @firstmove == "3" ||@firstmove == "9" ||@firstmove == "1"
                choice_steps = ["5","6","2","8","4"]
                elsif @firstmove == "4" || @firstmove == "8" ||@firstmove == "6" ||@firstmove == "2"
                choice_steps = ["5","7","3","9","1"]
                else
                    choice_steps = ["7","3","9","1"]
                end
            
            choice_steps.each do |possible_choice|
                if board.valid_spot?(possible_choice) == true
                    woo_choice_arr << possible_choice
                end
            end
            choice = woo_choice_arr[0]

        end 


    choice
                

    end

end