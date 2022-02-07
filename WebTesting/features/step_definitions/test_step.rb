Given('I visit {string}') do |string|
    visit string
end
  
Then('I should see {string}') do |string|
    page.has_css?(".title__hero page__title__hero", text: string)
end