*** Settings ***
Library       SeleniumLibrary
Resource  ../newone/ressource.robot
*** Variables ***

${browser}     chrome
${url}         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
TC1
    
    ${PageTitle}=   LaunchBrowser   ${url}   ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    input text      xpath//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    input text      xpath//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
