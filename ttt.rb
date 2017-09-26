def board_update(board,player,choice)
    board[choice] = player
    board
end

def change_players(player)
    if player == "x"
        "o"
    else
       "x"
    end
end

def valid_spot?(board,choice)
    if board[choice] == choice
        true
    else
        false
    end

end

def board_checker?(board)
    arr = []
    board.each_pair do |key,value|
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

def key_check?(choice)
    keys = (1..9).to_a
    if keys.include?(choice.to_i)
        true
    else
        false
    end
end

def winner?(board)
    answer = []
    count = 0
    until count == 9 do 
        # p board["#{count+1}"] + board["#{count+2}"] + board["#{count+3}"] + "R"
        if board["#{count+1}"] + "," + board["#{count+2}"] == board["#{count+3}"] + "," +  board["#{count+3}"]
                answer << true
        end
        # p board["#{(count/3)+1}"] +  board["#{(count/3) + 4}"] + board["#{(count/3) +7}"] + "C"   
         if board["#{(count/3)+1}"] + "," + board["#{(count/3) + 4}"] == board["#{(count/3) +7}"] + "," + board["#{(count/3) + 7}"]
            answer << true
        end
        if count < 6
            # p board["#{(count*2)%4 + 1}"] + board["5"] + board["#{(count/3)*-2 + 9}"] + "D"
            if board["#{(count*2)%4 + 1}"] + "," + board["5"] == board["#{(count/3)*-2 + 9}"] + "," + board["#{(count/3)*-2 + 9}"]    
                answer << true
        end
            end
        count += 3
    end        
     answer.include?(true)
end


