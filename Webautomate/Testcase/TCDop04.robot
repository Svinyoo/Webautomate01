*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Suite Setup     Open Browser    ${url04}    gc
Suite Teardown  Close Browser   



*** Test cases ***

FillUsername
    CommonKeywords.Inputsomething   xpath=


#<div>
     #   <span c="Username">User:</span>
     #<input type="text">
  #  </div>

  
FillPassword
    CommonKeywords.Inputsomething   xpath=


#<div>
       # <span c="Password">Pass:</span>
        # <input type="text">
   # </div>