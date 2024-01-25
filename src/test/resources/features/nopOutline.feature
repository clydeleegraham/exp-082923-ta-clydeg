Feature: NOP QA Scenario Outline Feature
  
  @nop
  @e2e
    
  Scenario Outline: NOP-QA Guest Purchase E2E test with datasets (BDD)
    Given I open url "https://nop-qa.portnov.com"
    And I should see page title contains "Home page"
    Then I wait for 2 sec

    Then I click on "Books" in the top menu
    And I should see page title contains "Books"
    Then I wait for 2 sec

    Then I click on the item that contains "Fahrenheit"
    Then I wait for 2 sec
    And I should see page title contains "Fahrenheit 451"
    Then I wait for 2 sec

#   Then check that Shopping cart == 0
    Then I click on the item that contains "Add to cart"
#   Then check that Shopping cart is => 1
#    Then I click on the item that contains "Shopping cart"
#    And I should see page title contains "Shopping Cart"
#
#    Then I click on the item that contains "Terms of Service"
#    And I click on the item that contains "Checkout"
#
#    Then I click on the item that contains "Checkout As Guest"
#    And I should see page title contains "Checkout"
#    Then I wait for 5 sec

#    Then I type "<firstname>" into the "" field
#    Then I type "<lastname>" into the field with xpath ""
#    Then I type "<email"> into the field with xpath ""

    Examples:
      | First Name | Last Name | Email                | Country       | City | Address 1    | Zip Code | Phone Number |
      | Clyde      | Graham    | test1234@example.com | United States | York | 123 Main St. | 17402    | 7175551212   |
