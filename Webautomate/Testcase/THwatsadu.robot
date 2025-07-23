*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/Config.yaml
Variables   ../Resources/Data.yaml

Suite Setup     Open Browser    ${Urlthaiwatsadu}    gc


*** Testcases *** 

