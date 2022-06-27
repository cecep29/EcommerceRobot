*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser  
User Login 
    Click Element                       ${login_link}
    Input Text                          ${input_email}              cecep@example.com
    Input Text                          ${input_password}           rahasia
    Click Element                       ${submit_login}
Verify My Account
    Element Should Be Visible           ${logout_link}
    Element Should Be Visible           ${account}

    


