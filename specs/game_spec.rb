require "minitest/autorun"
require_relative "../models/game"

class TestGame < Minitest::Test

  def setup()
    @game = Game.new("rock", "scissors")
  end

  def test_game()
    assert_equal("user wins - rock beats scissors.", @game.game())
  end
  
end
