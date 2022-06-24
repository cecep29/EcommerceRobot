*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome     
    Open Browser                        browser=chrome                url=${HOMEPAGE_URL}

Verify current url is homepage url 
    Location Should Be                  ${HOMEPAGE_URL}


