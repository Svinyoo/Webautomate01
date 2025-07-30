*** Settings ***

Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
#Variables   ../Resources/Data.yaml

Suite Setup     Open Browser       chrome   # options=${OPTIONS}
#Suite Teardown  Close Browser 

*** Variables ***
${OPTIONS}    add_argument=--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/122.0.0.0 
#ตั้ง User-Agent ให้ดูเหมือนผู้ใช้จริง


*** Test Cases  ***

Click to continue
    Sleep   10s
    Wait Until Element Is Visible   xpath=//div[@class='cms-wrapper']
    Sleep 3s
    CommonKeywords.Click element    xpath=//div[@class='bi bi-x font-extrabold text-2xl text-white']
    Sleep 3s
    CommonKeywords.Inputsomething   id= search-input    Windows
    