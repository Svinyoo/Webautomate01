*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml

Suite Setup     Open Browser    ${urlex}    gc
#Suite Teardown      Close Browser





*** Test cases ***

Fill Username 
    CommonKeywords.Inputsomething   id=username-box   Username-exercise

Fill Password
    CommonKeywords.Inputsomething   xpath=//div[@v='password']/input    Password-exercise

Fill Nickname
    CommonKeywords.Inputsomething   xpath=//input[@doppio]      Zaybest

Click Dropdown for select
    CommonKeywords.Click element    xpath=//select[@name='com']
    CommonKeywords.Click element    xpath=//select[@name='com']/option[@value='doppio']