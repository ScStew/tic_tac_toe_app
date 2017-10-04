class Player
    
    attr_accessor :player, :other_player

    def initialize 
        @player = "x"
        @other_player = change_players
    end

    def change_players
        if @player == "x"
           @player = "o"
        else
           @player = "x"
        end
    end
end