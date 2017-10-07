require_relative "board.rb"
require_relative "player.rb"
require_relative "ai.rb"

def players
    num = ""
    p "how many players 1:2"
    until num != ""
        num = gets.chomp
        if num =+ "1"
            num
        elsif num == "2"
            num
        else
            num = ""
        end
    end

end

def choose_ai
        p "difficulty 1:2:3"
            ai = ""
        until ai != ''
            ai = gets.chomp
            if ai = "1"
                ai = Random_ai.new
            elsif ai = "2"
                ai = Sequence_ai.new
            elsif ai = "3"
                ai = Hard_ai.new
            else
                ai = ""
            end
        end
    ai
end

def first_or_second
    p "would you like to go first(y/n)"
    choice = ""    
    until choice != ""
        choice = gets.chomp.upcase
        if choice == "Y"
            "player"
        elsif choice == "N"
            "ai"
        else
            choice = ""
        end
    end
end