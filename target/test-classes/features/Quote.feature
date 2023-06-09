#Quote application Testing
  #Author : Milan T.
  # URL : https://skryabin.com/webdriver/html/sample.html
@quote
Feature: Quote test Scenarios

  Background:
    Given I open url "https://skryabin.com/webdriver/html/sample.html"
    Then I resize window to 1920 and 1080

@quote1
  Scenario: Validate Location address
      #Given I open url "https://skryabin.com/webdriver/html/sample.html"
      #Then I resize window to 1920 and 1080
    Then I should see page title as "Sample Page"
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Ipad mode
    Then I resize window to 768 and 1024
    Then I should see page title as "Sample Page"
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"

      #IPhone mode
    Then I resize window to 375 and 667
    Then I should see page title as "Sample Page"
    Then element with xpath "//b[@id='location']" should not be displayed

@quote2
  Scenario: Name field verification
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    And I type "First" into element with xpath "//input[@id='firstName']"
    And I type "Middle" into element with xpath "//input[@id='middleName']"
    And I type "Last" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should be present
    Then element with xpath "//input[@id='name']" should have attribute "Value" as "First Middle Last"
    Then I wait for 5 sec
  @quote3
  Scenario Outline: Name field verification data driven
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    And I type "<FirstName>" into element with xpath "//input[@id='firstName']"
    And I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
    And I type "<LastName>" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should be present
    Then element with xpath "//input[@id='name']" should have attribute "Value" as "<FullName>"
    Then I wait for 5 sec
    Examples:
      | FirstName | MiddleName | LastName | FullName          |
      | First     | Middle     | Last     | First Middle Last |
      | A         | B          | C        | A B C             |
      | 1         | 2          | 3        | 1 2 3             |
      | A         |            | C        | A  C              |
      | A         | C          |          | A C               |
      | A         | B          | C        | ABC               |

  Scenario: Open URL based on your own request and your own method
  Then MT navigate to "Quote"


