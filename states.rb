#Hash full of all the states info
states = {
  :AL => {
    :name => "Alabama",
    :nickname => "The Cotton State",
    :year_founded => 1819
  }, :AK => {
    :name => "Alaska",
    :nickname => "The Last Frontier",
    :year_founded => 1959
  }, :AZ => {
    :name => "Arizona",
    :nickname => "The Copper State",
    :year_founded => 1912
  }, :AR => {
    :name => "Arkansas",
    :nickname => "The Land of Opportunity",
    :year_founded => 1836
  }, :CA => {
    :name => "California",
    :nickname => "The Golden State",
    :year_founded => 1850
  }, :CO => {
    :name => "Colorado",
    :nickname => "The Centennial State",
    :year_founded => 1876
  }, :CT => {
    :name => "Connecticut",
    :nickname => "The Constitution State",
    :year_founded => 1788
  }, :DE => {
    :name => "Delaware",
    :nickname => "The First State",
    :year_founded => 1787
  }, :FL => {
    :name => "Florida",
    :nickname => "The Sunshine State",
    :year_founded => 1845
  }, :GA => {
    :name => "Georgia",
    :nickname => "The Peach State",
    :year_founded => 1788
  }, :HI => {
    :name => "Hawaii",
    :nickname => "The Aloha State",
    :year_founded => 1959
  }, :ID => {
    :name => "Idaho",
    :nickname => "The Gem State",
    :year_founded => 1890
  }, :IL => {
    :name => "Illinois",
    :nickname => "The Prairie State",
    :year_founded => 1818
  }, :IN => {
    :name => "Indiana",
    :nickname => "The Hoosier State",
    :year_founded => 1816
  }, :IA => {
    :name => "Iowa",
    :nickname => "The Hawkeye State",
    :year_founded => 1846
  }, :KS => {
    :name => "Kansas",
    :nickname => "The Sunflower State",
    :year_founded => 1861
  }, :KY => {
    :name => "Kentucky",
    :nickname => "The Bluegrass State",
    :year_founded => 1792
  }, :LA => {
    :name => "Louisiana",
    :nickname => "The Pelican State",
    :year_founded => 1812
  }, :ME => {
    :name => "Maine",
    :nickname => "The Pine Tree State",
    :year_founded => 1820
  }, :MD => {
    :name => "Maryland",
    :nickname => "The Old Line State",
    :year_founded => 1788
  }, :MA => {
    :name => "Massachusetts",
    :nickname => "The Bay State",
    :year_founded => 1788
  }, :MI => {
    :name => "Michigan",
    :nickname => "The Great Lakes State",
    :year_founded => 1837
  }, :MN => {
    :name => "Minnesota",
    :nickname => "The State of 10,000 Lakes",
    :year_founded => 1858
  }, :MS => {
    :name => "Mississippi",
    :nickname => "The Magnolia State",
    :year_founded => 1817
  }, :MO => {
    :name => "Missouri",
    :nickname => "The Show Me State",
    :year_founded => 1821
  }, :MT => {
    :name => "Montana",
    :nickname => "The Treasure State",
    :year_founded => 1889
  }, :NE => {
    :name => "Nebraska",
    :nickname => "The Cornhusker State",
    :year_founded => 1867
  }, :NV => {
    :name => "Nevada",
    :nickname => "The Silver State",
    :year_founded => 1864
  }, :NH => {
    :name => "New Hampshire",
    :nickname => "The Granite State",
    :year_founded => 1788
  }, :NJ => {
    :name => "New Jersey",
    :nickname => "The Garden State",
    :year_founded => 1787
  }, :NM => {
    :name => "New Mexico",
    :nickname => "The Land of Enchantment",
    :year_founded => 1912
  }, :NY => {
    :name => "New York",
    :nickname => "The Empire State",
    :year_founded => 1788
  }, :NC => {
    :name => "North Carolina",
    :nickname => "The Tar Heel State",
    :year_founded => 1789
  }, :ND => {
    :name => "North Dakota",
    :nickname => "The Peace Garden State",
    :year_founded => 1889
  }, :OH => {
    :name => "Ohio",
    :nickname => "The Buckeye State",
    :year_founded => 1803
  }, :OK => {
    :name => "Oklahoma",
    :nickname => "The Sooner State",
    :year_founded => 1907
  }, :OR => {
    :name => "Oregon",
    :nickname => "The Beaver State",
    :year_founded => 1859
  }, :PA => {
    :name => "Pennsylvania",
    :nickname => "The Keystone State",
    :year_founded => 1787
  }, :RI => {
    :name => "Rhode Island",
    :nickname => "The Ocean State",
    :year_founded => 1790
  }, :SC => {
    :name => "South Carolina",
    :nickname => "The Palmetto State",
    :year_founded => 1788
  }, :SD => {
    :name => "South Dakota",
    :nickname => "The Coyote State",
    :year_founded => 1889
  }, :TN => {
    :name => "Tennesse",
    :nickname => "The Volunteer State",
    :year_founded => 1796
  }, :TX => {
    :name => "Texas",
    :nickname => "The Lone Star State",
    :year_founded => 1845
  }, :UT => {
    :name => "Utah",
    :nickname => "The Beehive State",
    :year_founded => 1896
  }, :VT => {
    :name => "Vermont",
    :nickname => "The Green Mountain State",
    :year_founded => 1791
  }, :VA => {
    :name => "Virginia",
    :nickname => "The Old Dominion",
    :year_founded => 1788
  }, :WA => {
    :name => "Washington",
    :nickname => "The Evergreen State",
    :year_founded => 1889
  }, :WV => {
    :name => "West Virginia",
    :nickname => "The Mountain State",
    :year_founded => 1863
  }, :WI => {
    :name => "Wisconsin",
    :nickname => "The Badger State",
    :year_founded => 1848
  }, :WY => {
    :name => "Wyoming",
    :nickname => "The Equality State",
    :year_founded => 1890
  }
}
#Prompts the user to define the difficulty
def diff
  puts "What difficulty would you like? (Easy, Medium, Hard)"
  difficulty = gets.chomp
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
#Defines the main gameplay of the trivia game
def gameplay
  #Lives are dependent on difficulty(diff) selected
  lives = diff
  #Points variable
  points = 0
  puts "You have " + lives.to_s + " lives!"


  def random_question
    #Going to work a way to use a hash instead of two seperate arrays
    $question_array = Array["Which state is known as the Evergreen State?", "What state is AZ?", "What state is CA?",
    'What state is known as the Last Frontier?']
    #random_question = question_array.shuffle.first
    return $rand = $question_array.sample
  end
  #If lives does not equal zero, let the game play out
  while lives != 0
    answer_array = Array["Washington", "Arizona", "California", "Alaska"]
    ind = $question_array.find_index($rand)
    puts random_question()
    puts "!!!---" + $rand + "---!!!"
    puts "What is your answer?"
    #Takes answer(answer_response) and compares it to the correct answer
    answer_response = gets.chomp
    print answer_array[$ind.to_i - 1]
    if answer_response == answer_array[$ind.to_i - 1]
      puts "You're right!"
      points += 10
      puts "You have " + points.to_s + " points!"
    else
      puts "That is wrong. You lose a life!"
      lives -= 1
      puts "You have " + lives.to_s + " lives left!"
    end

    if points == 100
      puts "You win!"
      break
    end
  end
end

#Prompts the user if they would like to play or not
puts "Would you like to play some trivia? (Yes/No)"
user_response = gets.chomp
#Handles User Response to question asking if they would like to play
if user_response == "yes" or user_response == "Yes"
  puts "Great! Let's play!"
  gameplay()
elsif user_response == "no" or user_response == "No"
  puts "Okay! Have a good day."
else
  puts "That is not a valid response."
end
