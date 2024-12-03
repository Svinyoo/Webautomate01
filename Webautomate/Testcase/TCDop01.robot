*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Suite Setup     Open Browser    ${url01}    gc
Suite Teardown  Close Browser



*** Test cases ***

Input Username
    CommonKeywords.Inputsomething   xpath=//input[@v='user']    Zaybest

   # <div>
       # Username: <input v="user" type="text">

Inputpassword   
    CommonKeywords.Inputsomething   xpath=//input[@v='password']    Passwordistheverybest 
         
    # <div>
       # Password: <input v="password" type="text">