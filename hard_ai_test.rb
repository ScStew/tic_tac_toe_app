require "minitest/autorun"
require_relative "hard_ai.rb"

class Test_hard_ai < Minitest::Test

    def test_1_and_1
        assert_equal(1,1)
    end

    def test_ai_first_choice_center
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        bot = Hard_ai.new
        assert_equal("7",bot.move(board))
    end

    def test_ai_first_choice_2
        board = {"1"=> "1","2" => "x","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("1",bot.move(board))
    end
    
    def test_ai_first_choice_4
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "x", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("1",bot.move(board))
    end

    def test_ai_first_choice_6
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "x", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("9",bot.move(board))
    end

    def test_ai_first_choice_8
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "x", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("9",bot.move(board))
    end

    def test_ai_first_choice_1
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end
    
    def test_ai_first_choice_3
        board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end

    def test_ai_first_choice_7
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "x","8" => "8", "9" => "9"}
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end
    
    def test_ai_first_choice_9
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "x"} 
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end

    def test_ai_block_1_7_column
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "x","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("4",bot.move(board))
    end

    def test_ai_block_2_8_column
        board = {"1"=> "o","2" => "x","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "x", "9" => "9"}
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end

    def test_ai_block_3_9_column
        board = {"1"=> "1","2" => "2","3"=> "x", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "8", "9" => "x"} 
        bot = Hard_ai.new
        assert_equal("6",bot.move(board))
    end

    def test_ai_block_1_3_row
        board = {"1"=> "x","2" => "2","3"=> "x", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("2",bot.move(board))
    end

    def test_ai_block_4_6_row
        board = {"1"=> "o","2" => "2","3"=> "3", "4"=> "x", "5" => "5" ,"6" => "x", "7" => "7","8" => "8", "9" => "9"} 
        bot = Hard_ai.new
        assert_equal("5",bot.move(board))
    end

    def test_ai_block_7_9_row
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "o" ,"6" => "6", "7" => "x","8" => "8", "9" => "x"}
        bot = Hard_ai.new
        assert_equal("8",bot.move(board))
    end 

    def test_ai_win_top_row
        board = {"1"=> "1","2" => "o","3"=> "x", "4"=> "x", "5" => "x" ,"6" => "6", "7" => "o","8" => "8", "9" => "o"}
        bot = Hard_ai.new
        assert_equal("8",bot.move(board)) 
    end
end