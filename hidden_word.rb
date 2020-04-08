class HiddenWord

    attr_reader :display

    def initialize(word)
        @word = word
        @display = @word.gsub(/./, "*")
    end

    def word_length()
        return @word.length
    end

end

