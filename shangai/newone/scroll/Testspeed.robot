*** Settings ***

Library       SeleniumLibrary


*** Variables ***

${browser}   chrome
${url}       https://demowebshop.tricentis.com/register

*** Test Cases ***
Testspeed
   ${point}=  get selenium speed
   Log To Console    ${point}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    #Sleep    3
    Set Selenium Speed    2
    Select Radio Button    Gender    M
    Input Text    FirstName    chay
    Input Text    LastName    fly
    Input Text    Email    test@gmail.com
    Input Password    Password    123
    Input Password    ConfirmPassword    123
    ${point}=  get selenium speed
    Log To Console    ${point}