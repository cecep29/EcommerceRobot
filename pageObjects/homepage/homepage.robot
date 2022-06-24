*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome     
    Open Browser                        browser=chrome                url=${HOMEPAGE_URL}

Verify current url is homepage url 
    Location Should Be                  ${HOMEPAGE_URL}

Verify home slider product appears
    Element Should Be Visible           ${home_slider}

Verify product image appears
    Element Should Be Visible           ${product_image}

Verify content top trends appears
    Element Should Be Visible           ${content_trends}    
