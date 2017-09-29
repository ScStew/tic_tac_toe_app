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
    def test_valid_spot_invalid
        board = Board.new
        choice = "3"
        player = "x"
        board.update(player,choice)
        assert_equal(false,board.valid_spot?(choice))
    end

    def test_full_board
        board = Board.new
        player = "x"
        choice = 1
        9.times do
        board.update(player,choice.to_s)
        choice += 1
        end
        assert_equal(false,board.board_not_full?) 
    end

    def test_not_full_board
        board = Board.new
        assert_equal(true,board.board_not_full?)
    end

    def test_winning_row_1
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice}")
        board.update(player,"#{choice+1}")
        board.update(player,"#{choice+2}")
        assert_equal(true,board.winner?)
    end

    def test_winning_row_2
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice+3}")
        board.update(player,"#{choice+4}")
        board.update(player,"#{choice+5}")
        assert_equal(true,board.winner?)
    end

    def test_winning_row_3
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice+6}")
        board.update(player,"#{choice+7}")
        board.update(player,"#{choice+8}")
        assert_equal(true,board.winner?)
    end

    def test_winning_column_1
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice}")
        board.update(player,"#{choice+3}")
        board.update(player,"#{choice+6}")
        assert_equal(true,board.winner?)
    end

    def test_winning_column_2
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice+1}")
        board.update(player,"#{choice+4}")
        board.update(player,"#{choice+7}")
        assert_equal(true,board.winner?)
    end

    def test_winning_column_3
        board = Board.new
        player = "x"
        choice = 1
        board.update(player,"#{choice+2}")
        board.update(player,"#{choice+5}")
        board.update(player,"#{choice+8}")
        assert_equal(true,board.winner?)
    end
end