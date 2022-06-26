*** Settings ***
Library                 SeleniumLibrary
Resource                ../../pageObjects/login/login.robot 

*** Test Cases ***
User Should Be Able Login
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Click Sign In
    Insert Email
    Insert Password
    Click Login
    [Teardown]                              Close Browser 

