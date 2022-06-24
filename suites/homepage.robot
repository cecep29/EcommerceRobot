*** Settings ***
Library                 SeleniumLibrary
Resource                ../pageObjects/homepage/homepage.robot

*** Test Cases ***
User Should Be Able See Homepage 
    [Setup]                                 Open Browser Chrome
    Verify current url is homepage url 
    Verify home slider product appears
    Verify product image appears
    Verify content home appears
    [Teardown]                              Close Browser 