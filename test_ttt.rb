require "minitest/autorun"
require_relative "ttt.rb"

class Test_ttt < Minitest::Test

    def test_1_and_1
        assert_equal(1,1)
    end

    def test_update_board
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        player = "x"
        choice = "2"
        assert_equal({"1"=> "","2" => "x","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",},board_update(board,player,choice))
    end

    def test_update_board
        board = board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        player = "o"
        choice = "8"
        assert_equal({"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "o", "9" => "",},board_update(board,player,choice))     
    end

    def test_change_players
        player = 'o'
        assert_equal("x",change_players(player))
    end

    def test_change_players_x
        player = "x"
        assert_equal("o",change_players(player))
    end

end
