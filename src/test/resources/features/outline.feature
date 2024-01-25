Feature: Scenario Outline Feature

  @Quote
  Scenario Outline: Quote-QA tests with datasets
    Given I open url "http://quote-stage.portnov.com"
    Then I type "<fullname>" into element with xpath "//input[@id='name']"
    Then I wait for 5 sec
    And I type "<username>" into element with xpath "//input[@name='username']"
    And I type "<email>" into element with xpath "//input[@name='email']"
    And I type "<password>" into element with xpath "//input[@name='password']"
    And I type "<password>" into element with xpath "//input[@name='confirmPassword']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@name='formSubmit']"

  @NOP
  @E2E
  Scenario Outline: NOP-QA Guest Purchase E2E test with datasets (BDD)
    Given I open the NOP home page
    Then I wait for NOP Commerce logo
    And I confirm the page title contains "Home page"
    Then I wait for 1 sec

    Then I click on "Books" in the top menu
    And I confirm the page title contains "Books"

    Then I click on the item that contains "Fahrenheit"
    And I confirm the page title contains "Fahrenheit"

    Then I click on "Add To Cart"
    Then I click on "Shopping Cart"
    And I confirm the page title contains "Shopping Cart"

    Then I click on "Terms of Service"
    And I click on "Checkout"

    Then I click on "Checkout As Guest"
    And I confirm the page title contains "Checkout"

#    Then I type "<firstname>" into the "" field
#    Then I type "<lastname>" into the field with xpath ""
#    Then I type "<email"> into the field with xpath ""

  Examples:
    | First Name | Last Name | Email                | Country       | City | Address 1    | Zip Code | Phone Number |
    | Clyde      | Graham    | test1234@example.com | United States | York | 123 Main St. | 17402    | 7175551212   |







    Examples:
      |fullname     | username        | email               | password     |
      |Artem        | artemoganesyan  | test@example.com    | 123456       |
      |Artem Og     | test&^%21       | test11@example.com  | 123456&^%    |
      |Artem 32     | test-with-dash  | test11@example      | dfFDH123     |
      |Clyde Graham | clydeg          | test123@example.com | Passw0rd123! |