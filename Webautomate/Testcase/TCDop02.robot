*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Suite Setup     Open Browser    ${url02}    chrome
Suite Teardown  Close Browser   


*** Test cases ***

InputUsername
    CommonKeywords.Inputsomething   xpath=//div[@v='username']/input    Zaybest  

    #<div v="username">
       # Username: <input type="text">
   # </div>

InputPassword
    CommonKeywords.Inputsomething   xpath=//div[@v='password']/input    PasswordistheBest

   # <div v="password">
      #  Password: <input type="text">
   # </div>