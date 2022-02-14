Feature: Home Page of Aetna.com
    As a user I should be presented with the home Page
    #Scenario 1
    Scenario: As a user I should be presented with the home screen
        Given I visit "https://www.aetna.com/"
        Then I should see "Healthier happens together"
    #Scenario 2
    Scenario: As a user I should be able to find the Support Phone Number
        Given I visit "https://www.aetna.com/"
        When I click on "Contact us"
        Then I should see the header "Contact Aetna"
        And I should also see "Call Us"
    #Scenario 3
    Scenario: As a user I should be able to find Aetna's Twitter Username
    Given I visit "https://www.aetna.com/"
    When I click on "Contact us"
    Then I should see the header "Contact Aetna"
    And I should also see "Reach us on Twitter"
    And I should be able to find "@Aetna"