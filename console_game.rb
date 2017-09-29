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
            p "how hard do you want it to be: 1:2:3"
                diff = gets.chomp
                
                if diff == "2"
                    ai = Sequence_ai.new
                elsif diff == "1"
                    ai = Random_ai.new
                elsif diff == "3"
                    ai = Hard_ai.new
                else
                    p "not a valid choice"
                end
                
        end
        elsif num == "2"

        else
            p "Not a valid Entry"
        end
            
            until game == "end"
            choice = ""
            board.print
            p "player #{player.player}'s turn'"
            if player.player == "x"
                choice = gets.chomp
                if board.firstmove == ""
                    board.firstmove = choice
                end
            elsif ai != "dumb"
                choice = ai.move(board.game_board)
            else
                choice = gets.chomp
            end
                if board.key_check?(choice) == true
                    if board.valid_spot?(choice) == true
                        board.update(player.player,choice)
                        if board.winner? == true
                            p "player #{player.player} is the winner"
                            game = "end"
                            board.print
                        else
                            if board.board_not_full? == true
                                player.change_players
                            else
                            p "TIE GAME"
                            game = "end"
                            board.print
                            end
                        end
                    else
                        p "spot already taken"
                    end
                else
                    p "not a valid choice"
                end
        end

end

game
