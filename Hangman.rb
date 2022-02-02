# This is a basic program on Ruby
#
# Try to modify and run it and check out
# the output in the terminal below
#
# Happy coding! :-)

$words = Array["ruby", "rails", "python", "cat", "array", "dog", "burn", "chicken", "cow"]

def select_word()
  $mystery_word = $words.shuffle.first

  $mystery_letters = $mystery_word.split("")
end

def diff()
  puts "What difficulty would you like to play with? (Easy, Medium, or Hard)"
  difficulty = gets.chomp

  if difficulty == "easy" or difficulty == "Easy"
    puts "You get 5 lives."
    return 5
  elsif difficulty == "medium" or difficulty == "Medium"
    puts "You get 3 lives."
    return 3
  elsif difficulty == "hard" or difficulty == "Hard"
    puts "You get 1 life."
    return 1
  else
    puts "That is not a valid response. Try again."
    diff()
  end
end

def gameplay()
  puts "--------------------"
  puts "Welcome to the game!"
  puts "--------------------"

  lives = diff()
  select_word()
  
  while lives != 0
    puts "What is your guess?"

    guess = gets.chomp
    
    if $mystery_word == guess
      puts "That is the word!"
      puts "-----------------"
      break 
    end
    
    if $mystery_letters.include? guess
      puts "That letter is in the word!"
    else
      puts "That letter is not in the word!"
      puts "You lose a life!"
      lives -= 1
      puts "-----------------"
      puts "You have #{lives.to_s} lives left!"
    end
  end

  if lives == 0
    puts "You lost. Feel free to play again."
  else
    puts "You won!"
  end
end

gameplay()