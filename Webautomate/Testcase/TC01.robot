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


Test fill text in website
    #CommonKeywords.Click    xpath=//button[@aria-label="ออกจากระบบ"]
    CommonKeywords.Input text    id=input   Test