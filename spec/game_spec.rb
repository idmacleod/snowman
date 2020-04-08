require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../game')
require_relative('../player')
require_relative('../hidden_word')

class GameTest < MiniTest::Test

    def setup
        @player = Player.new("Iain")
        @hidden_word = HiddenWord.new("rainforest")
        @game = Game.new(@player, @hidden_word)
    end

    def test_game_has_player
        assert_equal(Player, @game.player.class)
    end

    def test_game_has_hidden_word
        assert_equal(HiddenWord, @game.hidden_word.class)
    end

    def test_game_starts_with_no_guessed_letters()
        assert_equal(0, @game.guessed_letters.length)
    end

end

