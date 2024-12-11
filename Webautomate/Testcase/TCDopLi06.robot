*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables    ../Resources/Config.yaml
Suite Setup    Open Browser    ${urlli06}    chrome
#Suite Teardown    Close All Browsers





*** Test Cases ***
Try to fill username 
    CommonKeywords.Inputsomething    xpath=//div[@k='abc' and @p='xyz']/input    Zaybest

   # <div k="abc" p="xyz">
      #  User:
      # <input type="text">
 #   </div>
Try to fill password
    CommonKeywords.Inputsomething    xpath=//div[@k='abc' and contains(.,'Password:')]/input   Eieiei  ##################

    #<div k="abc">
       # Password:
       # <input type="text">  หรือใช้แบบนี้ก็ได้ //div[2]/input แต่ถ้ามีการเปลี่ยนแปลงลำดับจะใช้งานไม่ได้
   # </div>

Try to fill nickname
    CommonKeywords.Inputsomething    xpath=//div[@p='xyz' and contains(.,'Nickname:')]/input    Yooyoooo

   #<div p="xyz">
        #Nickname:<input type="text">
   # </div>