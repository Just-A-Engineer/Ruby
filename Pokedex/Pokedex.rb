require "poke-api-v2"

def get_pokemon(pokemon)   
    $mon = PokeApi.get(pokemon: pokemon)
end

def run 
    puts "Welcome to the Pokedex!"
    puts "------------------------"
    puts "Please enter the number of the Pokemon you would like to reach?"
    puts "------------------------"

    user_input = gets.chomp

    until user_input == "exit"
        poke = get_pokemon(user_input)
        mon_name = $mon.name
        mon_weight = ($mon.weight * 0.220462).to_i
        mon_height = ($mon.height * 3.93701).to_i #(Decimeters to Inches)
        mon_ability = $mon.abilities.ability
        puts "------------------------"
        puts "The name of your pokemon is: #{mon_name}"
        puts "------------------------"
        puts "This pokemon also weighs (approximately) #{mon_weight} lbs!"
        puts "------------------------"
        puts "This pokemon is also (approximately) #{mon_height} inches tall!"
        puts "------------------------"
        puts "A list of this pokemons abilities are: #{mon_ablility}"
        puts "------------------------"
        puts "Put in another number (Or type exit to leave the app):"
        puts "------------------------"
        user_input = gets.chomp
    end
end

run()