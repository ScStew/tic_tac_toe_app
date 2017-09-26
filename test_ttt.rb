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

    def test_valid_spot
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        choice = "2"
        assert_equal(true,valid_spot?(board,choice))
    end
    
    def test_valid_spot_false
        board = {"1"=> "","2" => "o","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "",}
        choice = "2"
        assert_equal(false,valid_spot?(board,choice))
    end

    def test_valid_spot_6
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "o",}
        choice = "6"
        assert_equal(true,valid_spot?(board,choice))
    end

    def test_full_board_false
        board = {"1"=> "","2" => "","3"=> "", "4"=> "", "5" => "" ,"6" => "", "7" => "","8" => "", "9" => "o",}
        assert_equal(false,board_checker?(board))
    end

    def test_full_board_true
        board = {"1"=> "o","2" => "x","3"=> "o", "4"=> "x", "5" => "o" ,"6" => "x", "7" => "0","8" => "x", "9" => "o",} 
        assert_equal(true,board_checker?(board))

    end

    def test_invalid_key_entry
        choice = "10"
        assert_equal(false,key_check(choice))
    end

    def test_valid_key_entry
        choice = "2"
        assert_equal(true,key_check(choice))
    end

    def test_winning_player_row_1
        board = {"1"=> "x","2" => "x","3"=> "x", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_column_1
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "x", "5" => "5" ,"6" => "6", "7" => "x","8" => "8", "9" => "9",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_D_1
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "x",}
        assert_equal(true,winner(board))
    end

    def test_winnig_player_row_2
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "x", "5" => "x" ,"6" => "x", "7" => "7","8" => "8", "9" => "9",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_column_2
        board = {"1"=> "1","2" => "x","3"=> "3", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "x", "9" => "9",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_d_2
        board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "x","8" => "8", "9" => "9",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_row_3
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "x","8" => "x", "9" => "x",}
        assert_equal(true,winner(board))
    end

    def test_winning_player_colimn_3
        board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "5" ,"6" => "x", "7" => "7","8" => "8", "9" => "x",}
        assert_equal(true,winner(board))
    end

    def test_winner_empty_board
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
        assert_equal(false,winner(board))
    end

end