*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Login
    Open Browser                        https://www.saucedemo.com/          chrome
    Maximize Browser Window
    Wait Until Element Is Visible       id:user-name
    Input Text                          id:user-name                        standard_user
    Input Password                      id:password                         secret_sauce
    Click Element                       id:login-button
    Sleep                               5s
    Close Browser