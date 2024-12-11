*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Suite Setup     Open Browser    ${url05}    gc
Suite Teardown  Close Browser   



*** Test cases ***

Try to FillUsername
    CommonKeywords.Inputsomething   xpath=//div[span[text()='User:']]/input  Username is true 


   # <div>
      #  <span>User:</span>
       # <input type="text">
    #</div>


Try to FillPassword
    CommonKeywords.Inputsomething  xpath=//div[span[text()='Pass:']]/input     Password is the best

    #<div>
     #   <span>Pass:</span> 
      #  <input type="text">
    #</div>
