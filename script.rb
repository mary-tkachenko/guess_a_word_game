# ---------------- EVALUATION OF THE INPUT ---------------- 
def evaluation(word, coded_word, input)
  if word.include? input
    puts 'yay'
    placeholder = (0...word.length).find_all { |i| word[i] == input }
    # p placeholder
    placeholder.each do |where|
      # puts word[where]
      coded_word[where] = word[where]
      p coded_word
    end
  else 
    puts 'nay'
  end

  if word == coded_word
    puts "YOU WIN"
    return
  else
    continue_game(word, coded_word)
  end
end

#CONTINUE GAME
def continue_game(word, updated_coded_word)
  puts 'Guess more. The word is ' << updated_coded_word
  input = gets.chomp
  evaluation(word, updated_coded_word, input)
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
