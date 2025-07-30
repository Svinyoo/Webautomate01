*** Settings ***  # ย้ายมานี้ดีกว่า https://the-internet.herokuapp.com/

Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
#Variables   ../Resources/Data.yaml

Suite Setup     Open Browser    ${Url}       chrome   # options=${OPTIONS}
Suite Teardown  Close Browser 

*** Variables ***
${OPTIONS}    add_argument=--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/122.0.0.0 
#ตั้ง User-Agent ให้ดูเหมือนผู้ใช้จริง


*** Test Cases  ***

Click to continue
    Sleep   10s
    Wait Until Element Is Visible   xpath=//a[@class='imh-logo imh-logo-nav']
    Sleep   3s
    CommonKeywords.Click element    xpath=//span[@class='imh-ds-icon']
    Sleep   3s
   # CommonKeywords.Inputsomething   id= search-input    Windows
    