class Player
    
    attr_reader :player

    def initialize 
        @player = "x"
    end

    def change_players
        if @player == "x"
           @player = "o"
        else
           @player = "x"
        end
    end
end