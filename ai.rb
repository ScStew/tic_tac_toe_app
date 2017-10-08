require_relative "board.rb"
require_relative "player.rb"
require_relative "unbeatable_functions.rb"


class Hard_ai

    attr_accessor :counter
    def initialize
        @counter = 1
    end
        
    def move(board,player)
        choice = winning_move(board,player)
            if choice == false
                choice == blocking_move(board,player)
                if choice == false
                    p "#{counter}counter"
                    if counter == 1
                        @counter += 1
                        choice = first_move(board)
                    elsif counter == 2
                        @counter += 1
                        choice = second_move(board,player)
                    else
                        @counter += 1
                        choice = third_move(board,player)
                    end
                end
            end 
        choice
    end
end

 class Random_ai
    
    def move(board,player)
        choice = ["1","5","9","4","6","2","7","9","8"]
        count = 0
        pick = ""
        rand_pick = ""
        until pick == "good"
            rand_pick = choice.sample
            if choice.include?(board[rand_pick])
                pick = "good"
            end
        end
        rand_pick
    end
                    
 end
 class Sequence_ai
    
    def move(board,player)
     pick = ""
     choice = ["1","5","9","4","6","2","7","9","8"]
     count = 0
         until pick == "good"
             if board[choice[count]] == "x" || board[choice[count]] == "o"
                 count += 1
             else
                 pick = "good"
             end
         end
     
         choice[count]
     end
 
 end