#Given Statements
Given('I visit {string}') do |string|
    visit string
end
#When Statements
When('I click on {string}') do |string|
    find_link string
end
#Then Statements
Then('I should see {string}') do |string|
    page.has_css?(".title__hero page__title__hero", text: string)
end
Then('I should see the header {string}') do |string|
    page.has_css?(".title__block", text: string)
end
Then('I should also see {string}') do |string|
    page.has_css?(".nextaction__top__headline", text: string)
end