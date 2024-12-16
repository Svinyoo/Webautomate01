*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml

Suite Setup     Open Browser    ${urlexUbun}    gc
#Suite Teardown      Close Browser





*** Test cases ***

Fill Username 
    CommonKeywords.Inputsomething   id=username-box   Username-exercise

Fill Password
    CommonKeywords.Inputsomething   xpath=//div[@v='password']/input    Password-exercise

Fill Nickname
    CommonKeywords.Inputsomething   xpath=//input[@doppio]      Zaybest

Click Dropdown for select 
    Select From List By Label    company    Doppio          #xpath=//select[@name='com']/option[@value='doppio']
    Sleep    3s
    Select From List By Index    com    3         # ***** is not chane to i want find way to fix it *****
    Sleep    3s
   # Select From List By Value    offpido 
  #  <select name="com" id="company">
    #    <option value="pioffdoo">pi-off-doo</option>
     #   <option value="offpido">off-pi-do</option>
  #      <option value="dopioff">Do-pi-off</option>
   #     <option value="doppio">Doppio</option>
  #    </select>


selected the check List
    Select Checkbox    id=op1
    Select Checkbox    id=op2
    Select Checkbox    name=vehicle3
    
    
   
Click to confrim
    CommonKeywords.Click but    id=use-me 

