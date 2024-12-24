*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables    ../Resources/Config.yaml

Suite Setup     Open Browser    ${url0}     gc
Suite Teardown  Close Browser




*** Test Cases ***


Test click on website for accept cookies
    CommonKeywords.Click but   xpath=//button[text()='Accept All']

Test click on Test Automation Service
    CommonKeywords.Click    xpath=//div[a[@href='https://www.doppiotech.com/index.php/test-resource-outsource-2/']]