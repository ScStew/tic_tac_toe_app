require "minitest/autorun"
require_relative "seq_ai.rb"

class Test_seq_ai < Minitest::Test
   
    def test_move_1
        seq_ai = Sequence_ai.new
        board = {"1"=> "1","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
    assert_equal("1",seq_ai.move(board))
    end

    def test_move_2
        seq_ai = Sequence_ai.new
       board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "5" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
        assert_equal("5",seq_ai.move(board))
    end

    def test_move_3
        seq_ai = Sequence_ai.new
        board = {"1"=> "x","2" => "2","3"=> "3", "4"=> "4", "5" => "x" ,"6" => "6", "7" => "7","8" => "8", "9" => "9",}
        assert_equal("9",seq_ai.move(board))
    end

    def test_move_last
        seq_ai = Sequence_ai.new
        board = {"1"=> "x","2" => "x","3"=> "x", "4"=> "x", "5" => "x" ,"6" => "x", "7" => "x","8" => "8", "9" => "x",}
        assert_equal("8",seq_ai.move(board))
    end
end