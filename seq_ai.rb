class Sequence_ai
   
   
    def move(board)
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