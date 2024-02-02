*** Settings ***

Library       SeleniumLibrary
Library       RPA.Robocorp.Vault



*** Variables ***

${browser}   chrome
${url}       https://demowebshop.tricentis.com/register

*** Test Cases ***
Testspeed
    
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    ${time}=    get Selenium timeout
    Log To Console    ${time}
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    FirstName    chay
    Input Text    LastName    fly
    Input Text    Email    test@gmail.com
    Input Password    Password    123
    Input Password    ConfirmPassword    123
    Close Browser


*** Keywords ***
authorize
    # TODO: implement keyword "authorize".
    Fail    Not Implemented
