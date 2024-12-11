*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Config.yaml
Resource    ../Keywords/CommonKeywords.robot

Suite Setup    Open Browser    ${urlli04}    gc 
Suite Teardown    Close Browser


*** Test Cases ***

FillUsername
    CommonKeywords.Inputsomething    xpath=//div[span[@c='Username']]/input    Testfillusername

#<div>
     #   <span c="Username">User:</span>  span กับ input อยู่ level เดียวกัน
     #<input type="text">
  #  </div>

FillPassword 
    CommonKeywords.Inputsomething    xpath=//div[span[@c='Password']]/input    Testfillpassword

#<div>
       # <span c="Password">Pass:</span>
        # <input type="text">
   # </div>