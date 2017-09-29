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
end
