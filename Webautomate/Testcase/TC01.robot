*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables    ../Resources/Config.yaml

Suite Setup     Open Browser    ${url0}     gc
Suite Teardown  Close Browser




*** Test Cases ***

Test to say hi
    Say hello


Test call Variables
    Call Variables


Test click on website
    CommonKeywords.Click    xpath=//a[@class="elementor-button elementor-button-link elementor-size-sm elementor-animation-float"]

Test click on Test Automation Service
    CommonKeywords.Click    xpath=//div[a[@href='https://www.doppiotech.com/index.php/test-resource-outsource-2/']]