class HiddenWord

    def initialize(word)
        @word = word
    end

    def display()
        return @word.gsub(/./, "*")
    end

    def word_includes?(letter)
        return @word.include?(letter)
    end

end

