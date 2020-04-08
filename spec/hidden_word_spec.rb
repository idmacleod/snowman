require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hidden_word')

class HiddenWordTest < MiniTest::Test

    def setup()
        @hidden_word = HiddenWord.new("paddington")
    end

    def test_display()
        assert_equal("**dd*n***n", @hidden_word.display(["d", "n"]))
    end

    def test_word_includes__true
        assert(@hidden_word.word_includes?("d"))
    end

    def test_word_includes__false
        refute(@hidden_word.word_includes?("z"))
    end

end