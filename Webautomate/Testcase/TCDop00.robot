*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables    ../Resources/Config.yaml

Suite Setup     Open Browser     ${url00}     gc
Suite Teardown  Close Browser


*** Test cases ***

Input Username in the box
    Input Text      id=username-box        Testfill


