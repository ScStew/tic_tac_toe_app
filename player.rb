class Player
    
    attr_accessor :player

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