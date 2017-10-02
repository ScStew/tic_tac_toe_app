require "minitest/autorun"
require_relative "player.rb"

class Test_player < Minitest::Test

    def test_player_change_x
        player = Player.new
        assert_equal("o",player.change_players)
    end

    def test_player_change_o
        player = Player.new
        player.change_players
        assert_equal("x",player.change_players)
    end
    
end