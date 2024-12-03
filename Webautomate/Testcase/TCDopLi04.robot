*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Config.yaml
Resource    ../Keywords/CommonKeywords.robot

Suite Setup    Open Browser    ${urlli04}    gc 
Suite Teardown    Close Browser


*** Test Cases ***

FillUsername
    Inputsomething    $locator    $text
