class Random_ai

    def move(board)
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