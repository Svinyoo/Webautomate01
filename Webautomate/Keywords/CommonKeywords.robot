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


Input text
    Input text      ${locator}      ${text}
    