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

    def test_winning_move_4_row
        board = {"1"=> "1","2" => "2","3"=> "o", "4"=> "4", "5" => "x" ,"6" => "x", "7" => "o","8" => "8", "9" => ""}
        player = "x"
        assert_equal('4',winning_move(board,player))
    end

    def test_winning_move_5_diaganol
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "o", "5" => "5" ,"6" => "6", "7" => "o","8" => "8", "9" => "x"}
        player = "x"
        assert_equal('5',winning_move(board,player))
    end

    def test_winnig_move_6_column
        board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "o", "9" => "x"}
        player = "x"
        assert_equal('6',winning_move(board,player))
    end

    def test_winning_move_7_column
        board = {"1"=> "x","2" => "2","3"=> "o", "4"=> "x", "5" => "5" ,"6" => "o", "7" => "7","8" => "8", "9" => "9"}
        player = "x"
        assert_equal('7',winning_move(board,player))
    end

    def test_winning_move_8_row
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "o", "5" => "o" ,"6" => "6", "7" => "x","8" => "8", "9" => "x"}
        player = "x"
        assert_equal("8",winning_move(board,player))
    end

    def test_winning_move_false_2
        board = {"1"=> "o","2" => "2","3"=> "o", "4"=> "x", "5" => "x" ,"6" => "o", "7" => "o","8" => "o", "9" => "x"}
        player = "x"
        assert_equal(false,winning_move(board,player))
    end

    def test_blocking_move_false
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        player = "x"
        assert_equal(false,blocking_move(board,player))
    end

    def test_blocking_move_1
        board = {"1"=> "1","2" => "o","3"=> "o", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        player = "x"
        assert_equal("1",blocking_move(board,player))
    end

    def test_blocking_move_2_column
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "x","8" => "o", "9" => "x"}
        player = "x"
        assert_equal("2",blocking_move(board,player))
    end

    def test_blocking_move_3_diagonal
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "x", "7" => "o","8" => "8", "9" => "x"}
        player = "x"
        assert_equal("3",blocking_move(board,player))
    end





end
