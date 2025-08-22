*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Variables   ../Resources/Data.yaml

Suite Setup     Open Browser    ${Url}  chrome

*** Keywords ***
Set Slider Value
    [Arguments]    ${locator}    ${value}
    ${slider}=    Get WebElement    ${locator}
    Execute Javascript    arguments[0].value = ${value}; arguments[0].dispatchEvent(new Event('input')); arguments[0].dispatchEvent(new Event('change'));    ${slider}



*** Test Cases ***

Click to continue
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[@class="home-banner"]/a/img[@class="banner-image"]    timeout=10s
    Sleep    2s
    Wait Until Element Is Visible    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]    timeout=5s
    CommonKeywords.Click ele    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]
    Sleep    2s  

Go to Slider
    #Normal is opened.
    CommonKeywords.Click ele    xpath=//div[@id="app"]/div/div/div/div[1]/div/div/div[4]/span[@class="group-header"]
    Sleep   1s  
    CommonKeywords.Click ele    xpath=//div[@id="app"]/div/div/div/div[1]/div/div/div[4]/span[@class="group-header"]
    Sleep   1s 
    CommonKeywords.Click ele    xpath=//div//span[text()='Slider'] 
    #//div/span → ลูกตรง ๆ ของ <div> เท่านั้น
    #//div//span → ลูกทุกระดับ (ลูก, หลาน, เหลน) ของ <div>
    
Set Slider    #1       

    Set Slider Value    xpath=//input[@type="range"]    10


Set Slider by input    #2
    Input Text    id=sliderValue    100
    Press Keys    id=sliderValue    ENTER

Set Slider by simulate     #3
    Drag And Drop By Offset    xpath=//input[@type="range"]    30    0