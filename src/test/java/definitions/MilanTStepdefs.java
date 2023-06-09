package definitions;

import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class MilanTStepdefs {
    @Then("MT navigate to {string}")
    public void mtNavigateTo(String sURL) {
        //getDriver().get("https://skryabin.com/webdriver/html/sample.html");

        switch (sURL) {
            case "Quote":
                getDriver().get("https://skryabin.com/webdriver/html/sample.html");
                break;
            case "ask-int":
                getDriver().get("http://ask-int.portnov.com");
                break;
            case "Portnov.com":
                getDriver().get("https://www.portnov.com/");
                break;
            default:
                System.out.println("No URL found");
        }


    }
}
