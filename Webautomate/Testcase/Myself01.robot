*** Settings ***  

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
    Sleep    5s
    Wait Until Element Is Visible    xpath=//div[@class="home-banner"]/a/img[@class="banner-image"]    timeout=10s
    Sleep    2s
    Wait Until Element Is Visible    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]    timeout=5s
    CommonKeywords.Click ele    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]
    Sleep    2s
    


Go to form
    Sleep   5s
    CommonKeywords.Click ele   xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/span[@class="group-header"] 
    Wait Until Element Is Visible    xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/div[@class="element-list collapse show"]     timeout=10s   
    CommonKeywords.Click ele   xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/div[@class="element-list collapse show"]   
    Sleep   10s
