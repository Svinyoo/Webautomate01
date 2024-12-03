*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Suite Setup     Open Browser    ${url03}    gc
Suite Teardown  Close Browser   




*** Test cases ***


InputUsernamenaja
    CommonKeywords.Inputsomething   xpath=//div[contains(@v,'username')]/input   Zaybestsudlor

  #  <div v="username-gSDFsdcsd">
     #   Username: <input type="text">
 #   </div>


InputPassword
    CommonKeywords.Inputsomething   xpath=//div[contains(@v,'password')]/input  password D T Sud 

    #<div v="password-FSDCsdcsd">
      #  Password: <input type="text">
 #   </div>