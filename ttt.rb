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
    if board[choice] == ""
        true
    else
        false
    end

end

def board_checker?(board)
    val_arr = board.values
    unless val_arr.include?("")
        true
    else
        false
    end
end

def key_check(choice)
    keys = (1..9).to_a
    if keys.include?(choice.to_i)
        true
    else
        false
    end
end

def winner(board)
    answer = []
    count = 0
    until count == 9 do 
        if board["#{count+1}"] + "," + board["#{count+2}"] == board["#{count+3}"] + "," +  board["#{count+3}"]
                answer << true
         else
            if board["#{(count/3) + 1}"] + "," + board["#{(count/3) + 4}"] == board["#{(count/3) +7}"] + "," + board["#{(count/3) + 7}"]
                answer << true
            else
               answer << false       
            end    
        end
        count += 3
    end        
    answer.include?(true)
end
