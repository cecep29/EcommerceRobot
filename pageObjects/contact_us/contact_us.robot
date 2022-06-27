*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome     
    Open Browser            browser=chrome                url=${HOMEPAGE_URL}

Click Contact Us Link
    Click Element                           ${contact_link}

Verify Contact Us Page 
    Element Sould Be Visible                ${page_heading_contact_us}

Fill Message Form
    Select From List By Index               ${select_subject}               1
    Input Text                              ${input_email}                  cecep@example.com
    Input Text                              ${input_order_reference}        demo_1
    Input Text                              ${input_message}                demo Message

Click Send 
    Click Element                           ${send_button}
