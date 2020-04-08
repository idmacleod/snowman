class Game

    attr_reader :player, :hidden_word, :guessed_letters

    def initialize(player, hidden_word)
        @player = player
        @hidden_word = hidden_word
        @guessed_letters = []
    end

    def guess_letter(letter)
        result = @hidden_word.word_includes?(letter)
        @guessed_letters << letter
        @player.lose_life if result == false
        return result
    end

    def is_won?()
        revealed_word = @hidden_word.display(@guessed_letters)
        return !revealed_word.include?("*")
    end

    def is_lost?()
        return @player.lives == 0
    end

end