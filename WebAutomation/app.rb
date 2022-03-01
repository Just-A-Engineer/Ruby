#Prompt the user to input information regarding their test. 
feature_file = "features/testing.feature"
test_file = "features/step_definitions/test_step.rb"

puts "-----------------------"
puts "What would you like the name of your feature to be?"
feature_name = gets.chomp
puts "-----------------------"

puts "Add some info about the scenario below!"
feature_info = gets.chomp
puts "-----------------------"

puts "What is the scenario you would like to test for first?"
scenario_name = gets.chomp
puts "-----------------------"

puts "What URL would you like to be testing?"
url_prompt = gets.chomp
puts "-----------------------"

puts "What should you see once you visit the URL?"
then_name = gets.chomp
puts "-----------------------"

open(feature_file, 'w') do |f|
    f.puts "Feature: #{feature_name}"
    f.puts "    #{feature_info}"
    f.puts "    Scenario: #{scenario_name}"
    f.puts "        Given I visit '#{url_prompt}'"
    f.puts "        Then I should see #{then_name}"
end

shell_output = `powershell.exe #{"cucumber"}`

step_def = shell_output.slice(441, 673)

open(test_file, 'w') do |f|
    f.puts step_def
end

def data_write(file, initial, substitution)
    data = File.read(file)
    filtered_data = data.sub! initial, substitution

    File.open(file, "w") do |f|
        f.write(filtered_data)
    end
end

data_write(test_file, "pending", "visit string")

puts "-----------------------"
puts "Take a second to look in the Website."
puts "-----------------------"
puts "What is the selector containing the #{then_name.to_s}?"
puts "-----------------------"
selector = gets.chomp

data_write(test_file, "pending", "page.has_css?('#{selector}')")

shell = `powershell.exe #{"cucumber"}`

puts shell