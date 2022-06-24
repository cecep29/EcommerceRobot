*** Settings ***
Library                 SeleniumLibrary
Resource                ../pageObjects/homepage/homepage.robot

*** Test Cases ***
User Should Be Able See Homepage 
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Verify current url is homepage url 
    Verify home slider product appears
    Verify product image appears
    Verify content top trends appears
    [Teardown]                              Close Browser 