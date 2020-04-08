class HiddenWord

    attr_reader :display

    def initialize(word)
        @word = word
        @display = ""
        @word.each_char {|cstr| @display += "*"}
    end

    def word_length()
        return @word.length
    end

end

