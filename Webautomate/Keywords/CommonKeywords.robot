*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${message}      Want to success


*** Keywords ***

Say hello
    Log To Console         Test zaybest   
    Log To Console          Singda
    Log To Console          Wanna be QA automation


Call Variables
    Log To Console          ${message}


Inputsomething
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds   5x    2s    Input Text      ${locator}      ${text}
        

Click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds   5x    2s    Click Element      ${locator}


Click but
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    1x    2s    Click Button    ${locator}    
    

Verify element present