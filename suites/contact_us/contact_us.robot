** Settings ***
Library                 SeleniumLibrary
Resource                ../../pageObjects/contact_us/contact_us.robot 

*** Test Cases ***
User Should Be Able Send Message
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Click Contact Us Link
    Verify Contact Us Page 
    Fill Message Form
    Click Send 
    Verify message has been sent successfully
    [Teardown]                              Close Browser

