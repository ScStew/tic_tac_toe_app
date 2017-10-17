require_relative "ai.rb"
require_relative "player.rb"
require_relative "board.rb"

def game(choice,board_class,player_class,ai,num_of_players,order)
        player_order = {order[0] => order[1],order[2] => order[3]}
        gboard = board_class.game_board
        player = player_class.player
            if player_order[player_class.player] == 'player'
                board_class.update(player_class.player,choice)
            elsif player_order[player_class.player] == "ai"
                choice = ai.move(gboard,player)
                board_class.update(player,choice)
            end
        # if board_class.valid_spot?(choice) == true    
            if board_class.winner? == true
                ret = "WINNER"
                
            else
                if board_class.board_not_full? == false
                    ret = "TIE"
                else
                    ret = ""
    
                end
            end
        # end
    ret
end
     

def who_won(num_of_players,players,marker,order)
    order = {order[0] => order[1], order[2] => order[3]}

    if num_of_players == "2"
        if marker == 'x'
            winner = players[0]
        else
            winner = players[1]
        end
    else
        winner = order[marker]
        if winner == 'ai'
            winner = "Computer"
        else
            winner = players[0]
        end
    end
    winner
end
