*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser                        browser=chrome              url=${HOMEPAGE_URL}
Click Sign In
    Click Element                       ${login_link}
Insert Email
    Input Text                          ${input_email}              cecep@example.com
Insert Password
    Input Text                          ${input_password}           rahasia
Click Login
    Click Element                       ${submit_login}