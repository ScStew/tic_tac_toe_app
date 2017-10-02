require "minitest/autorun"
require_relative "ran_ai.rb"

class Test_ran_ai < Minitest::Test
     def test_rand_ai_for_valid_return
        ran_ai = Random_ai.new
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9"}
        test_arr =  ["1","5","9","4","6","2","7","9","8"]
        test = test_arr.include?(ran_ai.move(board))
        assert_equal(true,test)
     end

     def test_rand_ai_1_outcome
        ran_ai = Random_ai.new
        board = {"1"=> "1","2" => "x","3"=> "x", "4"=> "x", "5" => "x" ,"6" => "x", "7" => "x","8" => "x", "9" => "x"}
        assert_equal("1",ran_ai.move(board))
    end
end
