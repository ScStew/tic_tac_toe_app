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
    keys = [1..9]
    unless keys.include?(choice.to_i)
        true
    else
        false
    end
end