require_relative "ai.rb"
require_relative "player.rb"
require_relative "board.rb"

def game(choice,board_class,player_class,ai,num_of_players,order)
        player_order = {order[0] => order[1],order[2] => order[3]}
        board = board_class.game_board
        player = player_class.player
        if num_of_players == "1"
            if player_order[player_class.player] == 'player'
                board_class.update(player,choice)
            elsif player_order[player_class.player] == "ai"
                choice = ai.move(board_class.game_board,player_class.player)
                board_class.update(player,choice)
            end
        elsif num_of_players == "2"
            board_class.update(player,choice)
        end
        # if board_class.valid_spot?(choice) == true    
            if board_class.winner? == true
                ret = "WINNER"
                
            else
                if board_class.board_not_full? == false
                    ret = "TIE"
                else
                    ret = "Next_turn"
    
                end
            end
        # end
    ret
end
        