class HiddenWord

    def initialize(word)
        @word = word
    end

    def display(guessed_letters)
        result = ""
        @word.each_char {|c| guessed_letters.include?(c) ? result += c : result += "*"}
        return result
    end

    def word_includes?(letter)
        return @word.include?(letter)
    end

end

