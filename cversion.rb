require_relative "ttt.rb"

def game
    game = "start"
    player = "x"
    board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
    until game == "end" do
        p "#{board['7']}|#{board['8']}|#{board['9']}"
        p "- - -"
        p "#{board['4']}|#{board['5']}|#{board['6']}"
        p "- - -"
        p "#{board['1']}|#{board['2']}|#{board['3']}"
        p "pick one"
        choice = gets.chomp
        if key_check?(choice) == true
            if valid_spot?(board,choice) == true
                board_update(board,player,choice)
                if winner?(board) == true
                    p "player #{player} is the winner"
                    game = "end"
                else
                    if board_checker?(board) == true
                        player = change_players(player)
                    else
                        p "tie game"
                        game = "end"
                    end
                end    
            else
                p "spot already taken"
            end
        else
        p "invalid choice"
        end 

   end
end


game
