package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class nopStepDefs {

    @Then("I click on {string} in the top menu")
    public void iClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath("//a[contains(text(),'Books')][1]")).click();
    }

    @Then("I click on the item that contains {string}")
    public void iClickOnTheItemThatContains(String xpath) {
        getDriver().findElement(By.xpath("//a[contains(text(),'Fahrenheit')][1]")).click();
    }
}
