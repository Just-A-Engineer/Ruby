#States Class with state information gets called in states_array
class States
  attr_accessor :abbr, :name, :nickname, :year_founded
  def initialize(abbr, name, nickname, year_founded)
    @abbr = abbr
    @name = name
    @nickname = nickname
    @year_founded = year_founded
  end
end
#Question Class gets called in question_array
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end
#Stands for name and state information
$states_array = [
  $al = States.new("AL", "Alabama", "The Cotton State", 1819),
  $ak = States.new("AK", "Alaska", "The Last Frontier", 1959),
  $az = States.new("AZ", "Arizona", "The Copper State", 1912),
  $ar = States.new("AR", "Arkansas", "The Land of Opportunity", 1836),
  $ca = States.new("CA", "California", "The Golden State", 1850),
  $co = States.new("CO", "Colorado", "The Centennial State", 1876),
  $ct = States.new("CT", "Connecticut", "The Constitution State", 1788),
  $de = States.new("DE", "Delaware", "The First State", 1787),
  $fl = States.new("FL", "Florida", "The Sunshine State", 1845),
  $ga = States.new("GA", "Georgia", "The Peach State", 1788),
  $hi = States.new("HI", "Hawaii", "The Aloha State", 1959),
  $id = States.new("ID", "Idaho", "The Gem State", 1890),
  $il = States.new("IL", "Illinois", "The Prairie State", 1818),
  $in = States.new("IN", "Indiana", "The Hoosier State", 1816),
  $ia = States.new("IA", "Iowa", "The Hawkeye State", 1846),
  $ks = States.new("KS", "Kansas", "The Sunflower State", 1861),
  $ky = States.new("KY", "Kentucky", "The Bluegrass State", 1792),
  $la = States.new("LA", "Louisiana", "The Pelican State", 1812),
  $me = States.new("ME", "Maine", "The Pine Tree State", 1820),
  $md = States.new("MD", "Maryland", "The Old Line State", 1788),
  $ma = States.new("MA", "Massachusetts", "The Bay State", 1788),
  $mi = States.new("MI", "Michigan", "The Great Lakes State", 1837),
  $mn = States.new("MN", "Minnesota", "The State of 10,000 Lakes", 1858),
  $ms = States.new("MS", "Mississippi", "The Magnolia State", 1817),
  $mo = States.new("MO", "Missouri", "The Show Me State", 1821),
  $mt = States.new("MT", "Montana", "The Treasure State", 1889),
  $ne = States.new("NE", "Nebraska", "The Cornhusker State", 1867),
  $nv = States.new("NV", "Nevada", "The Silver State", 1864),
  $nh = States.new("NH", "New Hampshire", "The Granite State", 1788),
  $nj = States.new("NJ", "New Jersey", "The Garden State", 1787),
  $nm = States.new("NM", "New Mexico", "The Land of Enchantment", 1912),
  $ny = States.new("NY", "New York", "The Empire State", 1788),
  $nc = States.new("NC", "North Carolina", "The Tar Heel State", 1789),
  $nd = States.new("ND", "North Dakota", "The Peace Garden State", 1889),
  $oh = States.new("OH", "Ohio", "The Buckeye State", 1803),
  $ok = States.new("OK", "Oklahoma", "The Sooner State", 1907),
  $or = States.new("OR", "Oregon", "The Beaver State", 1859),
  $pa = States.new("PA", "Pennsylvania", "The Keystone State", 1787),
  $ri = States.new("RI", "Rhode Island", "The Ocean State", 1790),
  $sc = States.new("SC", "South Carolina", "The Palmetto State", 1788),
  $sd = States.new("SD", "South Dakota", "The Coyote State", 1889),
  $tn = States.new("TN", "Tennesse", "The Volunteer State", 1796),
  $tx = States.new("TX", "Texas", "The Lone Star State", 1845),
  $ut = States.new("UT", "Utah", "The Beehive State", 1896),
  $vt = States.new("VT", "Vermont", "The Green Mountain State", 1791),
  $va = States.new("VA", "Virginia", "The Old Dominion", 1788),
  $wa = States.new("WA", "Washington", "The Evergreen State", 1889),
  $wv = States.new("WV", "West Virginia", "The Mountain State", 1863),
  $wi = States.new("WI", "Wisconsin", "The Badger State", 1848),
  $wy = States.new("WY", "Wyoming", "The Equality State", 1890)
]
#Prompts the user to define the difficulty
def diff
  puts "What difficulty would you like? (Easy, Medium, Hard)"
  difficulty = gets.chomp
  #If Easy - 6 $lives Medium - 3 $lives Hard - 1 Life
  if difficulty == "Easy" or difficulty == "easy"
    return 6
  elsif difficulty == "Medium" or difficulty == "medium"
    return 3
  elsif difficulty == "Hard" or difficulty == "hard"
    return 1
  else
    puts "That is not a valid answer. Try Again"
    diff()
  end
end
#Defines the main main_gameplay of the trivia game
def main_gameplay
  #$lives are dependent on difficulty(diff) selected
  $lives = diff
  #Points variable
  $points = 0
  puts "You have " + $lives.to_s + " lives!"
  #Creates and adds new Question objects to the question_array
  $question_array = Array.new
  for state in $states_array
    $question_array.push(Question.new("What is the name of #{state.abbr}?", "#{state.name}"))
    $question_array.push(Question.new("Which state is #{state.nickname}?", "#{state.name}"))
    $question_array.push(Question.new("What is the abbreviation of #{state.name}?", "#{state.abbr}"))
    $question_array.push(Question.new("What is the nickname of #{state.name}?", "#{state.nickname}"))
    $question_array.push(Question.new("When was #{state.name} founded?", "#{state.year_founded}"))
  end
  #Generates a random question
  def random_question
    $rand = $question_array.shuffle.first
    #Takes Prompt and Answer from Question Object
    $question = $rand.prompt
    $answer = $rand.answer
    return $question
  end
end

def question_asking
  while $lives != 0
    puts "---------------------"
    puts random_question()
    puts "---------------------"
    puts "What is your answer?"
    puts "---------------------"
    #Takes answer(answer_response) and compares it to the correct answer
    answer_response = gets.chomp
    #If answer is right:
    if answer_response == $answer.to_s
      puts "---------------------"
      puts "You're right!"
      $points += 10
      puts "You have " + $points.to_s + " points!"
      puts "---------------------"
    #Else/If Answer is wrong
    else
      puts "That is wrong. You lose a life!"
      puts "---------------------"
      puts "The right answer is #{$answer.to_s}"
      puts "---------------------"
      $lives -= 1
      if $lives == 1
        puts "You have " + $lives.to_s + " life left!"
        puts "---------------------"
      else
        puts "You have " + $lives.to_s + " lives left!"
        puts "---------------------"
      end
    end
    #Lose Condition
    if $lives == 0
      puts "You Lose! Feel Free to try again!"
    end
    #Win Condition
    if $points == 100
      puts "You win!"
      break
    end
  end
end
#Prompts the user if they would like to play or not
puts "Would you like to play some trivia? (Yes/No)"
#Handles user_response
def user_choice 
  user_response = gets.chomp
  #Handles User Response to question asking if they would like to play
  if user_response == "yes" or user_response == "Yes"
    puts "Great! Let's play!"
    main_gameplay()
    question_asking()
  elsif user_response == "no" or user_response == "No"
    puts "Okay! Have a good day."
  else
    puts "That is not a valid response."
    user_choice()
  end
end
#Calls initial starting method user_choice()
user_choice()