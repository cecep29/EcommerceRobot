*** Settings ***
Library                 SeleniumLibrary
Resource                ../pageObjects/homepage/homepage.robot

*** Test Cases ***
User Should Be Able See Homepage 
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
   
    [Teardown]                              Close Browser 