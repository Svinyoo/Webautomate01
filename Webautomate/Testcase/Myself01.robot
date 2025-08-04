*** Settings ***  

Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Variables   ../Resources/Data.yaml

Suite Setup     Open Browser    ${Url}       chrome   # options=${OPTIONS}
#Suite Teardown  Close Browser 

*** Variables ***
${OPTIONS}    add_argument=--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/122.0.0.0 
#ตั้ง User-Agent ให้ดูเหมือนผู้ใช้จริง


*** Test Cases  ***

Click to continue
    Sleep    3s
    Wait Until Element Is Visible    xpath=//div[@class="home-banner"]/a/img[@class="banner-image"]    timeout=10s
    Sleep    2s
    Wait Until Element Is Visible    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]    timeout=5s
    CommonKeywords.Click ele    xpath=//div[@id="app"]/div/div/div[@class="home-body"]/div/div[4]
    Sleep    2s
    


Go to form
    Sleep   2s
    CommonKeywords.Click ele   xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/span[@class="group-header"] 
    Wait Until Element Is Visible    xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/div[@class="element-list collapse show"]     timeout=10s   
    CommonKeywords.Click ele   xpath=//div[@id="app"]/div/div/div/div/div/div/div[2]/div[@class="element-list collapse show"]   
    Sleep   1s

Fill form Info
    Sleep   2s
    Wait Until Element Is Visible   id=userName-label   timeout=5s
    CommonKeywords.Click ele    id=firstName
    Sleep   1s
 #Name and LastName
    CommonKeywords.Inputsomething   id=firstName    ${Name0}
    CommonKeywords.Inputsomething   id=lastName     ${LastName0}
    Sleep   1s
 #Email
    CommonKeywords.Inputsomething   id=userEmail    ${Email}    
 #Gender
    CommonKeywords.Click ele   xpath=//label[@for="gender-radio-1"]  
    #เลือกใช้ label แทนเนื่องจาก label บัง input ใน HTML เมื่อมี  <label for="input_id"> → browser จะ map ให้ label ควบคุม input ตัวนั้นโดยอัตโนมัติจึงปลอดภัยและแม่นยำกว่าการคลิกตรง <input> โดยตรง

 #Mobile TEL
    CommonKeywords.Click ele    id=userNumber   
    CommonKeywords.Inputsomething   id=userNumber   ${Tel}
    Sleep   1s 

 #BirthDay
    CommonKeywords.Click ele    id=dateOfBirthInput
    Wait Until Element Is Visible  xpath=//select[@class="react-datepicker__month-select"]     timeout=5s
    CommonKeywords.Choose label     xpath=//select[@class="react-datepicker__month-select"]     January
    CommonKeywords.Choose label     xpath=//select[@class="react-datepicker__year-select"]      1998
    Sleep   1s
    CommonKeywords.Click ele    xpath=//div[@class="react-datepicker__day react-datepicker__day--001"]     


Fill form inner-info 
 #Subject
    CommonKeywords.Click ele    xpath=//div[@class="subjects-auto-complete__value-container subjects-auto-complete__value-container--is-multi css-1hwfws3"]   
    CommonKeywords.Inputsomething   id=subjectsInput        ${Subject1}
    Wait Until Element Is Visible    xpath=//div[@class="subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr"]   timeout=5s
    CommonKeywords.Click ele     xpath=//div[@class="subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr"][1]
   #//div[@class="subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr"] ==Dropdown หายแบบนี้ใช้ BreakOn->Subtree modifications==

    CommonKeywords.Inputsomething   id=subjectsInput        ${Subject2}
    Wait Until Element Is Visible    xpath=//div[@class="subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr"]   timeout=5s
    CommonKeywords.Click ele     xpath=//div[@class="subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr"][1]
 #Hobbies
    CommonKeywords.Click ele    xpath=//label[@for="hobbies-checkbox-1"]    
    CommonKeywords.Click ele    xpath=//label[@for="hobbies-checkbox-2"]  
    CommonKeywords.Click ele    xpath=//label[@for="hobbies-checkbox-3"]  
 #Choosefile Upload pic.
    CommonKeywords.Uploadfile   id=uploadPicture    C:/Users/User/Pictures/456591.jpg