#Words Array (will be working in a text file instead of an array)
$words = Array["ruby", "rails", "python", "cat", "array", "dog", "burn", "chicken", "cow"]
#This method creates two variables mystery_word and mystery_letters
def select_word()
  $mystery_word = $words.shuffle.first
  $mystery_letters = $mystery_word.split("")
end
#This method defines what difficulty the player would like
def diff()
  puts "What difficulty would you like to play with? (Easy, Medium, or Hard)"
  difficulty = gets.chomp
  #If the difficulty entered is equal to any of the difficulty choices
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
#This is the initial gameplay method it contains most of the gameplay elements
def gameplay()
  puts "--------------------"
  puts "Welcome to the game!"
  puts "--------------------"
  #Sets lives = what the diff(difficulty) method returns
  lives = diff()
  select_word()
  #While loop checking if lives have depleted to 0 or not
  while lives != 0
    puts "What is your guess?"
    #This takes a guess from the player 
    guess = gets.chomp
    #This checks if the guess is equal to the mystery_word
    if $mystery_word == guess
      puts "That is the word!"
      puts "-----------------"
      break 
    end
    #This checks to see if the guess is in the array of letters created in mystery_letters variable
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
  #This if statement checks if they have depleted their lives after the while loop
  if lives == 0
    puts "You lost. Feel free to play again."
  else
    puts "You won!"
  end
end
#Calling initial gameplay() method. 
gameplay()