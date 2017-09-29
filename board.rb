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
    
    def winner?
        answer = []
        count = 0
        until count == 9 do 
            #  p b
            
            
            @game_board["#{count+1}"] + @game_board["#{count+2}"] + @game_board["#{count+3}"] + "R"
            if @game_board["#{count+1}"] + "," + @game_board["#{count+2}"] == @game_board["#{count+3}"] + "," +  @game_board["#{count+3}"]
                    answer << true
            end
            #  p @game_board["#{(count/3)+1}"] +  @game_board["#{(count/3) + 4}"] + @game_board["#{(count/3) +7}"] + "C"   
             if @game_board["#{(count/3)+1}"] + "," + @game_board["#{(count/3) + 4}"] == @game_board["#{(count/3) +7}"] + "," + @game_board["#{(count/3) + 7}"]
                answer << true
            end
            if count < 6
                #  p @game_board["#{(count*2)%4 + 1}"] + @game_board["5"] + @game_board["#{(count/3)*-2 + 9}"] + "D"
                if @game_board["#{(count*2)%4 + 1}"] + "," + @game_board["5"] == @game_board["#{(count/3)*-2 + 9}"] + "," + @game_board["#{(count/3)*-2 + 9}"]    
                    answer << true
            end
                end
            count += 3
        end        
         answer.include?(true)
    end

end