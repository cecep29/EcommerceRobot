*** Settings ***
Library                 SeleniumLibrary
Resource                ../pageObjects/register/register.robot

*** Test Cases ***
User Should Be Able Register
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Click Sign In 
    Insert Email
    Click Create Account
    Insert Personal Information
    Click Register
    Verify Register Success
    [Teardown]                              Close Browser 