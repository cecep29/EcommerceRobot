*** Settings ***
Variables               locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php
${MYAccount_URL}        http://automationpractice.com/index.php?controller=my-account

*** Keywords ***
Open Browser Chrome     
    Open Browser                        browser=chrome                url=${HOMEPAGE_URL}

Click Sign In 
    Click Element                       ${login_button}

Insert Email
    Input Text                          ${input_email}              cecep2@example.com

Click Create Account
    Click Element                       ${submit_create}
    
Insert Personal Information
    Click Element                       ${radio_gender_mr}
    Input Text                          ${input_first_name}         cecep
    Input Text                          ${input_last_name}          efendi
    Input Text                          ${input_password}           rahasia
    Select From List By Index           ${select_day}               1
    Select From List By Index           ${select_mont}              1
    Select From List By Index           ${select_year}              20
    Input Text                          ${input_company}            Cecep Company
    Input Text                          ${input_address1}           Jalan Pamulang Raya
    Input Text                          ${input_city}               New York
    Select From List By Index           ${select_states}            1
    Input Text                          ${input_postcode}           15414
    Select From List By Index           ${select_country}           1
    Input Text                          ${input_phone_mobile}       12345678
    Input Text                          ${input_address_alias}      Alamat Lainnya
    
Click Register
    Click Element                       ${register_button}

Verify Register Success
    Location Should Be                  ${MYAccount_URL}
    Element Should Be Visible           ${my_account_heading}
    Element Text Should Be              ${input_first_name}         cecep


