
Given('I visit {string}') do |string|
  visit string # Write code here that turns the phrase above into concrete actions
end

Then('I should see Playstation Logo') do
  page.has_css?('.shared-nav-ps-logo') # Write code here that turns the phrase above into concrete actions
end

