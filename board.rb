class Board

    attr_reader :game_board
    def initialize
        @game_board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    end

    def update(player,choice)
        @game_board[choice] = player
        @game_board
    end

    def valid_spot?(choice)
        if @game_board[choice] == choice
            true
        else
            false
        end
    
    end
    
    def board_not_full?
        arr = []
        @game_board.each_pair do |key,value|
            if key == value
            arr << "match"
            else
            arr  <<"no_match"
            end
        end
        if arr.include?("match")
            true
        else
            false
        end
       
    end
end