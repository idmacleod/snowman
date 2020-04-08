require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word')

class HiddenWordTest < MiniTest::Test

    def setup()
        @hidden_word = HiddenWord.new("paddington")
    end

    def test_display_is_right_length()
        assert(@hidden_word.display.length == @hidden_word.word_length())
    end

    def test_display_all_stars()
        assert_equal("**********", @hidden_word.display)
    end

end