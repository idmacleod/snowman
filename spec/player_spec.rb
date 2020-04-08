require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../player')

class PlayerTest < MiniTest::Test

    def setup
        @player = Player.new("Victor")
    end

    def test_player_has_name()
        assert_equal("Victor", @player.name)
    end

    def test_new_player_has_6_lives()
        assert_equal(6, @player.lives)
    end
    
end