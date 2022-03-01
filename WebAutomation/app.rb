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

data1 = File.read(test_file) 
filtered_data1 = data1.sub! "pending", "visit string" 

File.open(test_file, "w") do |f|
  f.write(filtered_data1)
end

puts "-----------------------"
puts "Take a second to look in the Website."
puts "-----------------------"
puts "What is the selector containing the #{then_name.to_s}?"
puts "-----------------------"
selector = gets.chomp

data2 = File.read(test_file) 
filtered_data2 = data2.sub! "pending", "page.has_css?('#{selector}')" 

File.open(test_file, "w") do |f|
  f.write(filtered_data2)
end

shell = `powershell.exe #{"cucumber"}`

puts shell
#Output information and print it to the console and run the webTestAuto Application

#Goal of Whole WebAutomation app is to ask the user to input information and to create a web app tester. 

#For example: 
#What website would you like to test? 
#Input: aetna.com
#What would you like to test?
#Seeing the header "SAMPLE"

#Create and input information into the features file within WebAutomation/WebTestAuto/features
