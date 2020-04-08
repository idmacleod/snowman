require_relative('game')
require_relative('player')
require_relative('hidden_word')

puts "What is your name?"
name = gets.chomp
puts "Please input secret word:"
word = gets.chomp

player = Player.new(name)
hidden_word = HiddenWord.new(word)
game = Game.new(player, hidden_word)

while !(game.is_lost?() || game.is_won?())
    puts game.hidden_word.display(game.guessed_letters)
    puts "Make a guess!"
    letter = gets.chomp
    game.guess_letter(letter)
    puts "Game Over" if game.is_lost?()
    puts "You Win!" if game.is_won?()
end