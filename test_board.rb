require "minitest/autorun"
require_relative "board.rb"

class Test_board < Minitest::Test

    def test_new_board
        board = Board.new
        assert_equal({"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",},board.game_board)
        
    end

    def test_update_board
        board = Board.new
        player = "x"
        choice = "2"
        assert_equal({"1"=> "1","2" => "x","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",},board.update(player,choice))
    end

    def test_valid_spot_valid
        board = Board.new
        choice = "3"
        assert_equal(true,board.valid_spot?(choice))
    end
end