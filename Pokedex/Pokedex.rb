require "poke-api-v2"
#Grabs pokemon from PokeApi using the .get method
def get_pokemon(pokemon)
    $monster = PokeApi.get(pokemon: pokemon)
end
#Run method contains most of the code that runs the Pokedex
def run 
    #Welcomes User and asks them to choose a pokemon number
    puts "------------------------"
    puts "Welcome to the Pokedex!"
    puts "------------------------"
    puts "Please enter the number/ID of the Pokemon you'd like info on (Or type 1234 to exit the app): "
    puts "------------------------"
    #Gets user input to see which pokemon they would like information on
    user_input = (gets.chomp).to_i
    #Until user decides to exit the Pokedex, it keeps running this function
    while user_input != 1234
        #Uses get_pokemon() method to grab the pokemon the user chooses
        poke = get_pokemon(user_input)
        #Pokemon Name, Weight, Height, and Generation
        mon_name = $monster.name
        mon_weight = ($monster.weight * 0.220462).to_i #(Hectograms to Pounds)
        mon_height = ($monster.height * 3.93701).to_i #(Decimeters to Inches)
        #Hard coded way to get generation of pokemon
        if user_input > 0 and user_input <= 151
            mon_gen = "Generation I"
        elsif user_input > 151 and user_input <= 251
            mon_gen = "Generation II"
        elsif user_input > 251 and user_input <= 386
            mon_gen = "Generation III"
        elsif user_input > 386 and user_input <= 493
            mon_gen = "Generation IV"
        elsif user_input > 493 and user_input <= 649
            mon_gen = "Generation V"
        elsif user_input > 649 and user_input <= 721
            mon_gen = "Generation VI"
        elsif user_input > 721 and user_input <= 809
            mon_gen = "Generation VII"
        elsif user_input > 809 and user_input <= 898
            mon_gen = "Generation VIII"
        end
        #Prints out information on Pokemon chosen
        puts "------------------------"
        puts "The name of your pokemon is: #{mon_name}"
        puts "------------------------"
        puts "This pokemon also weighs (approximately) #{mon_weight} lbs!"
        puts "------------------------"
        puts "This pokemon is also (approximately) #{mon_height} inches tall!"
        puts "------------------------"
        puts "This pokemon is from #{mon_gen}"
        puts "------------------------"
        puts "Put in another number/ID (Or type 1234 to leave the app):"
        puts "------------------------"
        #Prompts user to re-enter a pokemon ID
        user_input = (gets.chomp).to_i
    end
end
#Asks user if they would like to use the application
puts "Hello there! Would you like to use the Pokedex? (y/n)"
#Function to check what the app_decision is equal to
def app_choice
    app_decision = gets.chomp
    #If statement checking response of app_decision
    #If app_decision == "y" run the app
    if app_decision == "y"
        run()
    elsif app_decision == "n"
        puts "Have a great day! Thanks for taking a look."
    else 
        puts "Not a valid input. Try again."
        app_choice()
    end
end
#Runs beginning method to start the process
app_choice()