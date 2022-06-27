Library                 SeleniumLibrary
Resource                ../../pageObjects/contact_us/contact_us.robot 

*** Test Cases ***
User Should Be Able Send Message
    [Setup]                                 Open Browser Chrome
    Maximize Browser Window
    Verify Contact Us Page 
    Click Contact Us Link
    Fill Message Form
    Click Send 
    [Teardown]                              Close Browser

