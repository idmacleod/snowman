require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../game')
require_relative('../player')
require_relative('../hidden_word')

class GameTest < MiniTest::Test

    def setup
        @player = Player.new("Iain")
        @hidden_word = HiddenWord.new("test")
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

    def test_guess_letter__true()
        assert(@game.guess_letter("t"))
        assert(@game.guessed_letters.include?("t"))
    end

    def test_guess_letter__false()
        refute(@game.guess_letter("z"))
        assert(@game.guessed_letters.include?("z"))
    end

    def test_multiple_guesses()
        @game.guess_letter("a")
        @game.guess_letter("b")
        @game.guess_letter("c")
        assert_equal(3, @game.guessed_letters.length)
    end

    def test_game_is_won__true()
        @game.guess_letter("t")
        @game.guess_letter("e")
        @game.guess_letter("s")
        assert(@game.is_won?())
    end

    def test_game_is_won__false()
        @game.guess_letter("e")
        @game.guess_letter("s")
        refute(@game.is_won?())
    end

    def test_game_is_lost__true()
        @game.guess_letter("a")
        @game.guess_letter("b")
        @game.guess_letter("c")
        @game.guess_letter("d")
        @game.guess_letter("f")
        @game.guess_letter("g")
        assert(@game.is_lost?())
    end

    def test_game_is_lost__false()
        @game.guess_letter("a")
        @game.guess_letter("b")
        @game.guess_letter("c")
        @game.guess_letter("d")
        @game.guess_letter("e")
        @game.guess_letter("f")
        refute(@game.is_lost?())
    end

end

