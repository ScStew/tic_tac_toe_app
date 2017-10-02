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

end