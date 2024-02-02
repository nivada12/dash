*** Settings ***

Library       SeleniumLibrary


*** Variables ***

${browser}   chrome
${url}       https://demowebshop.tricentis.com/register

*** Test Cases ***
Testspeed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    ${implicittime}=    Get Selenium Implicit Wait
    Log To Console    ${implicittime}
    Set Selenium Implicit Wait   10 seconds
    ${implicittime}=    Get Selenium Implicit Wait
    Log To Console    ${implicittime}
    Select Radio Button    Gender    M
    Input Text    FirstName   chay
    Input Text    LastName   fly
    Input Text    Email    test@gmail.com
    Input Password    Password    123
    Input Password    ConfirmPassword    123
    Close Browser