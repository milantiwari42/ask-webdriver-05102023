#ASK051023-592
# author: Milan T

@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

# Scenario for http://gibiru.com
  #@predefined2
  #Scenario: Search Engine for http://gibiru.com
    #Given I open url "http://gibiru.com"
    #Then I should see page title contains "Gibiru"
    #Then element with xpath "//input[@id='q']" should be present
    #Then I type "Bell pepper" into element with xpath "//input[@id='q']"
    #And I click on element with xpath "//button[@type='submit']"
    #Then I wait for element with xpath "//div[@id='web-results']" to be present
    #Then element with xpath "//div[@id='web-results']" should contain text "Bell pepper"
    #And I wait for 10 sec

  #Scenario for http://gibiru.com
  @predefine2
  Scenario: Search engine for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Bell Pepper" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Bell Pepper"

    




