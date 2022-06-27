*** Settings ***
Library                 SeleniumLibrary
Resource                ../../pageObjects/my_account/my_account.robot 

*** Test Cases ***
User Should Be Able See My Account
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    User login
    Verify My Account
    [Teardown]                              Close Browser