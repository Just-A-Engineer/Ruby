def select_word
  word_file = "words.txt"
  word_list = File.open(word_file)
  words = word_list.readlines
  index = rand(words.length - 1)
  mystery_word = words[index].chomp
end
