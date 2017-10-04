require_relative "board.rb"
require_relative "player.rb"
require_relative "ai.rb"



def game
    player = Player.new
    board = Board.new
    player.player = "x"
    ai = "dumb"
    game = ""
    wrong = ""
    p "How Many Players: 1 or 2"
    
    until wrong == "right"
    num = gets.chomp

        if num == "1"
            wrong = "right"
            until ai != "dumb" do
                p "how hard do you want it to be: 1:2:3"
                diff = gets.chomp
                    
                if diff == "2"
                    ai = Sequence_ai.new
                    game = "start"
                elsif diff == "1"
                    ai = Random_ai.new
                    game = "start"
                elsif diff == "3"
                    ai = Hard_ai.new
                    game = "start"
                else
                    p "not a valid choice"
                end    
            end
        elsif num == "2"
            wrong = "right"
            game = "start"
        else
            p "Not a valid Entry"
        end
    end
    
    
    if game == "start"
        until game == "end"
            choice = ""
            board.print
            p "player #{player.player}'s turn'"
            if player.player == "x"
                choice = gets.chomp
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
end

game
