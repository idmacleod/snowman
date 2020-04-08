require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word')

class HiddenWordTest < MiniTest::Test

    def setup()
        @hidden_word = HiddenWord.new("paddington")
    end

    def test_lengths_match()
        assert(@hidden_word.word_length() == @hidden_word.display.length)
    end

end