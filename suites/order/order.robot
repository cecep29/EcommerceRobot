*** Settings ***
Library                 SeleniumLibrary
Resource                ../../pageObjects/order/order.robot

*** Test Cases ***
User should be able order a product
    [Setup]                         Open Browser Chrome 
    User choose a product
    User add product to cart
    Proceed to checkout
    [Teardown]                      Close Browser
