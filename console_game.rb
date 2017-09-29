require_relative "board.rb"
require_relative "player.rb"
require_relative "ran_ai.rb"
require_relative "seq_ai.rb"


def game
    player = Player.new
    board = Board.new
    ai = "dumb"
    game = "start"
    p "How Many Players: 1 or 2"
    num = gets.chomp
    if num == "1"
       
        until ai != "dumb" do
        p "how hard do you want it to be: 1:2"
        diff = gets.chomp
           
            if diff == "1"
                ai = Sequence_ai.new
            elsif diff == "2"
                ai = Random_ai
            else
                p "not a valid choice"
            end
        
        end

        until game == "end"
            choice = ""
            board.print
            p "pick a number"
            if player.player == "x"
                choice = gets.chomp
            else 
                choice = ai.move(board.game_board)
            end
                if board.key_check?(choice) == true
                    if board.valid_spot?(choice) == true
                        board.update(player.player,choice)
                        if board.winner? == true
                            p "player #{player.player} is the winner"
                            game = "end"
                        else
                            if board.board_not_full? == true
                                player.change_players
                            else
                            p "TIE GAME"
                            game = "end"
                            end
                        end
                    else
                        p "spot already taken"
                    end
                else
                    p "not a valid choice"
                end
        end

     elsif num == "2"

    else
        p "Not a valid Entry"
    end
end

game
