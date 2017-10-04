require "minitest/autorun"
require_relative "unbeatable_functions.rb"

class Test_unbeatable < Minitest::Test
    
    def test_1_and_1
        assert_equal(1,1)
    end

    def test_winning_move_false
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        player = "x"
        assert_equal(false,winning_move(board,player))
    end

    def test_winning_move_1_row
        board = {"1"=> "1","2" => "x","3"=> "x", "4"=> "o", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        player = "x"
        assert_equal("1",winning_move(board,player))
    end

    def test_winning_move_2_column
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "o", "5" => "x" ,"6" => "o", "7" => "7","8" => "x", "9" => "9"}
        player = "x"
        assert_equal("2",winning_move(board,player))
    end

    def test_winning_move_3_diagonal
        board = {"1"=> "1","2" => "o","3"=> "3", "4"=> "o", "5" => "x" ,"6" => "6", "7" => "x","8" => "8", "9" => ""}
        player = "x"
        assert_equal('3',winning_move(board,player))
    end

end
