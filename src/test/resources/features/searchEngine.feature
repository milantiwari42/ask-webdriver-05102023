#Project: SearchEngineHomework
  #Author: Milan Tiwari
  #ASK051023-592

Feature: Automate Search Engine

  @Gibaru
  Scenario: Automate for gibiru
    Given I open url "http://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I type "Tesla" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//div[@id='web-results']" should be present
    Then element with xpath "//div[@id='web-results']" should contain text "Tesla"

  @duckduck
  Scenario: Automate for duckduck
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then I type "which is the highest mountain in the world?" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@aria-label='Search']"
    Then element with xpath "//section[@data-testid='mainline']" should contain text "Mount Everest"


  @SwissCow
  Scenario: Automate for swissCow search engine
    Given I open url "https://swisscows.com"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then I type "Which is the bigggest country  in the world by area?" into element with xpath "//input[@class='input-search']"
    Then I click on element with xpath "//button[@class='search-submit']"
    Then I wait for 5 sec
    Then element with xpath "//div[@class='web-results']" should contain text "Russia"

  @Searchencrypt
  Scenario: Automate for SearchEncrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then I type "Which is the smallest country in the world by area?" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//button[@type='submit']"
            #Then element with xpath "<string>" should contain text "<string>"


  @StartPage
  Scenario: Automate for StartPage
    Given I open url "https://www.startpage.com"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then I type "Which country is the fifa world cup winner in 2022?" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@id='search-btn']"
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Argentina"

  @Ecosia
  Scenario: Automate for ecosia
    Given I open url "https://www.ecosia.org"
    When I click on element with xpath "//button[@data-test-id='cookie-notice-accept']"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then I type "which is the biggest forest in the world?" into element with xpath "//input[@data-test-id='search-form-input']"
    Then I click on element with xpath "//button[@data-test-id='search-form-submit']"
    Then element with xpath "//main[@id='main']" should contain text "forest"

  @wiki
  Scenario: Automate for wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then I type "Banana" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@name='btnG']"
    Then I wait for 2 sec
    Then I should see page title as "Form is not secure"
    Then I click on element with xpath "//button[@id='proceed-button']"
    Then I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then element with xpath "//*[contains(text(),'Banana')]" should contain text "Banana"


    @givewater
    Scenario: Automate for giveWater
      Given I open url "https://www.givewater.com/"
      Then I wait for 2 sec
      Then element with xpath "//div[@class='pum-content popmake-content']" should be present
      Then I click on element with xpath "//button[@class='pum-close popmake-close']"
      Then I wait for 2 sec
      Then element with xpath "//input[@id='site-search']" should be present
      Then I type "Cucumber" into element with xpath "//input[@id='site-search']"
      Then I click on element with xpath "//button[@class='btn-search']"
      Then I wait for 2 sec
      Then I should see page title contains "GiveWater Web Search"
      Then element with xpath "//div[@class='layout__mainline']" should be present
      Then element with xpath "//div[@class='layout__mainline']" should contain text "Cucumber"



      @ekoru
      Scenario: Automate for Ekoru
        When I open url "https://ekoru.org/"
        Then I should see page title as "Ekoru - every search cleans our oceans"
        Then element with xpath "//input[@id='fld_q']" should be present
        Then I type "Carrot" into element with xpath "//input[@id='fld_q']"
        Then I click on element with xpath "//div[@id='btn_search']"
        Then I wait for 2 sec
        Then element with xpath "//div[@class='serp-wrapper']" should be present
        Then element with xpath "//div[@class='serp-wrapper']" should contain text "Carrot"














