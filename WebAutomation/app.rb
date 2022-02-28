#Prompt the user to input information regarding their test. 
featureFile = "features/testing.feature"
testFile = "features/step_definitions/test_step.rb"

puts "What would you like the name of your feature to be?"
featureName = gets.chomp

puts "Add some info about the scenario below!"
featureInfo = gets.chomp

puts "What is the scenario you would like to test for first?"
scenarioName = gets.chomp

puts "What URL would you like to be testing?"
urlPrompt = gets.chomp

puts "What should you see once you visit the URL?"
thenName = gets.chomp

open(featureFile, 'w') do |f|
    f.puts "Feature: #{featureName}"
    f.puts "    #{featureInfo}"
    f.puts "    Scenario: #{scenarioName}"
    f.puts "        Given I visit '#{urlPrompt}'"
    f.puts "        Then I should see #{thenName}"
end

shellOutput = `powershell.exe #{"cucumber"}`

stepDef = shellOutput.slice(423, 673)

open(testFile, 'w') do |f|
    f.puts stepDef
end
#Output information and print it to the console and run the webTestAuto Application

#Goal of Whole WebAutomation app is to ask the user to input information and to create a web app tester. 

#For example: 
#What website would you like to test? 
#Input: aetna.com
#What would you like to test?
#Seeing the header "SAMPLE"

#Create and input information into the features file within WebAutomation/WebTestAuto/features
