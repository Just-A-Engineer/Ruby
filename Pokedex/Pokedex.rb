require "poke-api-v2"
#Grabs pokemon from PokeApi using the .get method
def get_pokemon(pokemon)   
    $mon = PokeApi.get(pokemon: pokemon)
end
#Run method contains most of the code that runs the Pokedex
def run 
    #Welcomes User and asks them to choose a pokemon number
    puts "Welcome to the Pokedex!"
    puts "------------------------"
    puts "Please enter the number of the Pokemon you would like to reach?"
    puts "------------------------"
    #Gets user input to see which pokemon they would like information on
    user_input = gets.chomp
    #Until user decides to exit the Pokedex, it keeps running this function
    until user_input == "exit"
        #Uses get_pokemon() method to grab the pokemon the user chooses
        poke = get_pokemon(user_input)
        #Pokemon Name, Weight, Height, and Generation
        mon_name = $mon.name
        mon_weight = ($mon.weight * 0.220462).to_i
        mon_height = ($mon.height * 3.93701).to_i #(Decimeters to Inches)
        #Hard coded way to get generation of pokemon
        if user_input <= 151.to_s and user_input > 0.to_s
            mon_gen = "Generation I"
        elsif user_input > 151.to_s and user_input <= 251.to_s
            mon_gen = "Generation II"
        elsif user_input > 251.to_s and user_input <= 386.to_s
            mon_gen = "Generation III"
        elsif user_input > 386.to_s and user_input <= 493.to_s
            mon_gen = "Generation IV"
        elsif user_input > 493.to_s and user_input <= 649.to_s
            mon_gen = "Generation V"
        elsif user_input > 649.to_s and user_input <= 721.to_s
            mon_gen = "Generation VI"
        elsif user_input > 721.to_s and user_input <= 809.to_s
            mon_gen = "Generation VII"
        elsif user_input > 809.to_s and user_input <= 898.to_s
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
        puts "Put in another number (Or type exit to leave the app):"
        puts "------------------------"
        user_input = gets.chomp
    end
end
#Runs the run method/function 
run()