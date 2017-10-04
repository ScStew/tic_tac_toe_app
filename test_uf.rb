require "minitest/autorun"
require_relative "unbeatable_functions.rb"

class Test_unbeatable < Minitest::Test
    
    # def test_1_and_1
    #     assert_equal(1,1)
    # end

    # def test_winning_move_false
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     player = "x"
    #     assert_equal(false,winning_move(board,player))
    # end

    # def test_winning_move_1_row
    #     board = {"1"=> "1","2" => "x","3"=> "x", "4"=> "o", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     player = "x"
    #     assert_equal("1",winning_move(board,player))
    # end

    # def test_winning_move_2_column
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "o", "5" => "x" ,"6" => "o", "7" => "7","8" => "x", "9" => "9"}
    #     player = "x"
    #     assert_equal("2",winning_move(board,player))
    # end

    # def test_winning_move_3_diagonal
    #     board = {"1"=> "1","2" => "o","3"=> "3", "4"=> "o", "5" => "x" ,"6" => "6", "7" => "x","8" => "8", "9" => ""}
    #     player = "x"
    #     assert_equal('3',winning_move(board,player))
    # end

    # def test_winning_move_4_row
    #     board = {"1"=> "1","2" => "2","3"=> "o", "4"=> "4", "5" => "x" ,"6" => "x", "7" => "o","8" => "8", "9" => ""}
    #     player = "x"
    #     assert_equal('4',winning_move(board,player))
    # end

    # def test_winning_move_5_diaganol
    #     board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "o", "5" => "5" ,"6" => "6", "7" => "o","8" => "8", "9" => "x"}
    #     player = "x"
    #     assert_equal('5',winning_move(board,player))
    # end

    # def test_winnig_move_6_column
    #     board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "o", "9" => "x"}
    #     player = "x"
    #     assert_equal('6',winning_move(board,player))
    # end

    # def test_winning_move_7_column
    #     board = {"1"=> "x","2" => "2","3"=> "o", "4"=> "x", "5" => "5" ,"6" => "o", "7" => "7","8" => "8", "9" => "9"}
    #     player = "x"
    #     assert_equal('7',winning_move(board,player))
    # end

    # def test_winning_move_8_row
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "o", "5" => "o" ,"6" => "6", "7" => "x","8" => "8", "9" => "x"}
    #     player = "x"
    #     assert_equal("8",winning_move(board,player))
    # end

    # def test_winning_move_false_2
    #     board = {"1"=> "o","2" => "2","3"=> "o", "4"=> "x", "5" => "x" ,"6" => "o", "7" => "o","8" => "o", "9" => "x"}
    #     player = "x"
    #     assert_equal(false,winning_move(board,player))
    # end

    # def test_blocking_move_false
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     player = "x"
    #     assert_equal(false,blocking_move(board,player))
    # end

    # def test_blocking_move_1
    #     board = {"1"=> "1","2" => "o","3"=> "o", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     player = "x"
    #     assert_equal("1",blocking_move(board,player))
    # end

    # def test_blocking_move_2_column
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "x","8" => "o", "9" => "x"}
    #     player = "x"
    #     assert_equal("2",blocking_move(board,player))
    # end

    # def test_blocking_move_3_diagonal
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "x", "7" => "o","8" => "8", "9" => "x"}
    #     player = "x"
    #     assert_equal("3",blocking_move(board,player))
    # end

    # def test_blocking_move_4_row
    #     board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "o" ,"6" => "o", "7" => "7","8" => "8", "9" => "x"}
    #     player = "x"
    #     assert_equal("4",blocking_move(board,player))
    # end

    # def test_blocking_move_5_column
    #     board = {"1"=> "1","2" => "o","3"=> "x", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "o", "9" => "x"}
    #     player = "x"
    #     assert_equal("5",blocking_move(board,player))
    # end

    # def test_blocking_move_6_column
    #     board = {"1"=> "1","2" => "2","3"=> "o", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "x", "9" => "o"}
    #     player = "x"
    #     assert_equal("6",blocking_move(board,player))
    # end

    # def test_blocking_move_7_diagonal
    #     board = {"1"=> "1","2" => "2","3"=> "o", "4"=> "4", "5" => "o" ,"6" => "x", "7" => "7","8" => "x", "9" => "9"}
    #     player = "x"
    #     assert_equal("7",blocking_move(board,player))
    # end

    # def test_blocking_move_8_column
    #     board = {"1"=> "1","2" => "o","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "x", "7" => "7","8" => "8", "9" => "x"}
    #     player = "x"
    #     assert_equal("8",blocking_move(board,player))
    # end

    # def test_key_edge_seperator_2
    #     key = "2"
    #     assert_equal("1",key_edge_seperator(key))
    # end
        
    # def test_key_edge_seperator_4
    #     key = "4"
    #     assert_equal("1",key_edge_seperator(key))
    # end

    # def test_key_edge_seperator_6
    #     key = "6"
    #     assert_equal("9",key_edge_seperator(key))
    # end

    # def test_key_edge_seperator_8
    #     key = "8"
    #     assert_equal("9",key_edge_seperator(key))\
    # end

    # def test_first_move_ai_no_moves_yet
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("7",first_move(board))
    # end

    # def test_first_move_1
    #     board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert("5",first_move(board))
    # end

    # def test_first_move_2
    #     board = {"1"=> "1","2" => "x","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("1",first_move(board))
    # end

    # def test_first_move_3
    #     board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("5",first_move(board))
    # end

    # def test_first_move_4
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "x", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("1",first_move(board))
    # end

    # def test_first_move_5
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("7",first_move(board))
    # end

    # def test_first_move_6
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "x", "7" => "7","8" => "8", "9" => "9"}
    #     assert_equal("9",first_move(board))
    # end

    # def test_first_move_7
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "x","8" => "8", "9" => "9"}
    #     assert_equal("5",first_move(board))
    # end

    # def test_first_move_8
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "x", "9" => "9"}
    #     assert_equal("9",first_move(board))
    # end

    # def test_first_move_9
    #     board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "x"}
    #     assert_equal("5",first_move(board))
    # end

    # def test_fourth_action_2_4
    #     board = {"1"=> "1","2" => "x","3"=> "3", "4"=> "x", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
    #     player = "o"
    #     assert_equal("5",fourth_action(board,player))
    # end

    def test_fourth_action_1_9
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "8", "9" => "x"}
        player = 'o'
        assert_equal("2",fourth_action(board,player))
    end

end
