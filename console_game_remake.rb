require_relative "board.rb"
require_relative "player.rb"
require_relative "ai.rb"

def how_many_players
    num = " "
    p "how many players 1:2"
    until num != " "
        num = gets.chomp
        if num == "1"
            num = "1"
        elsif num == "2"
            num = "2"
        elsif num == "0"
            num = "0"
        else
            num = " "
            p "not a valid choice"
        end
    end
    num
end

def choose_ai
        p "difficulty 1:2:3"
            ai = " "
        until ai != ' ' do
            ai = gets.chomp
            if ai == "1"
                ai = Random_ai.new
            elsif ai == "2"
                ai = Sequence_ai.new
            elsif ai == "3"
                ai = Hard_ai.new
            else
                ai = " "
                p "invalid choice"
            end
        end
    ai
end

def first_or_second
    p "would you like to go first(y/n)"
    choice = " "    
    until choice != " " do
        choice = gets.chomp.upcase
        if choice == "Y"
           choice = "player"
        elsif choice == "N"
           choice = "ai"
        else
            p "invalid input"
            choice = " "
        end
    end
    choice
end

def game
    board_class = Board.new
    player_class = Player.new
    # board = board_class.game_board
    num =  how_many_players
    game = "start"
    ai = ""
    ai_2 = ""
    order =""
    if num == "1"
        ai = choose_ai
       
        if  first_or_second == "player"
            order = {"o" => "ai", "x" => "player"}
        else
            order = {"o" => "player", "x" => "ai"}        
        end
    elsif num == "2"
        order = {"o" => "player", "x" => "player"}
    else
        ai = choose_ai
        ai_2 = choose_ai
        order = {"o" => "ai_2", "x" => "ai"}
    end
    player_class.player = "x"
    until game == "done" do
        board = board_class.game_board
        player = player_class.player
        p "#{player}'s turn'"
        board_class.print
        if order[player_class.player] == "player"
            p "choose one"
            choice = gets.chomp
        elsif order[player_class.player] == "ai"
            choice = ai.move(board_class.game_board,player_class.player)
        else
            choice = ai_2.move(board_class.game_board,player_class.player)
        end

                if board_class.key_check?(choice) == true
                    if board_class.valid_spot?(choice) == true
                        board_class.update(player,choice)
                        if board_class.winner? == true
                            p "#{player} wins"
                            game = "done"
                        else
                            if board_class.board_not_full? == true
                                player_class.change_players
                            else
                                p "tie game"
                                game = "done"
                            end
                        end
                    else
                        p "invalid move"
                    end
                else
                    p "invalid move"
                end
            
    end
    board_class.print
end

game


        
        
    
    