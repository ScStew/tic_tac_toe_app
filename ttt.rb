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