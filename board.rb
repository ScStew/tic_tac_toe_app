class Board

    attr_accessor :game_board, :firstmove
    def initialize
        @game_board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        @firstmove = "start"
    end

    def firstmove_select(choice)
        @firstmove = choice
    end

    def print
        p "#{game_board['7']}|#{game_board['8']}|#{game_board['9']}"
        p "- - -"
        p "#{game_board['4']}|#{game_board['5']}|#{game_board['6']}"
        p "- - -"
        p "#{game_board['1']}|#{game_board['2']}|#{game_board['3']}"
        
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
     arr.include?("match")

       
    end

    
    def winner?
        answer = []
        count = 0
        until count == 9 do 
             
            
            
            # p @game_board["#{count+1}"] + @game_board["#{count+2}"] + @game_board["#{count+3}"] + "R"
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
        # p "---------"
        answer.include?(true)
    end

    def key_check?(choice)
        keys = (1..9).to_a
        if keys.include?(choice.to_i)
            true
        else
            false
        end
    end

end



