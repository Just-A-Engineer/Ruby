Feature: Home Page of Playstation
    As a user the following scenarios should pass
    Scenario: Find the Header
        Given I visit 'https://playstation.com/'
        Then I should see Playstation Logo
