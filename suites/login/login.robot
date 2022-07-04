*** Settings ***
Library                 SeleniumLibrary
Resource                ../../pageObjects/login/login.robot 

*** Test Cases ***
User Should Be Able Login
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Click Sign In
    User See AUTHENTICATION text
    Insert Email
    Insert Password
    Click Login
    User redirect to myaccount page
    [Teardown]                              Close Browser 



