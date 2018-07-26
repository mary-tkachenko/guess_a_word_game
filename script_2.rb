# ---------------- EVALUATION OF THE INPUT ---------------- 
def evaluation(word, coded_word, input)
  guessed = false
  word.each_char.with_index do |char, i|
    if char == input
      coded_word[i] = input
      guessed = true
    end
  end

  p guessed ? 'yay' : 'nay'

  if word == coded_word
    puts "YOU WIN"
    return
  end

  puts 'Guess more. The word is ' << coded_word
  input = gets.chomp
  evaluation(word, coded_word, input)
end

# ---------------- Program execution ---------------- 

words = ['combee', 'mistake', 'blabla']
words.each do |word|
  coded = '*' * word.length
  # puts coded
end
# word to play with
word_for_game = words[rand(0..words.length - 1)]
puts word_for_game

# coded word to play with
coded_word_for_game = '*' * word_for_game.length
puts coded_word_for_game

# START
puts 'Guess a letter. The word is ' << coded_word_for_game
char_input = gets.chomp
# puts char_input

evaluation(word_for_game, coded_word_for_game, char_input)
