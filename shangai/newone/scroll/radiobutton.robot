*** Settings ***

Library       SeleniumLibrary


*** Variables ***

${browser}   chrome
${url}       https://www.supcom.tn/formulaire/formulaire-test-1

*** Test Cases ***
Test radio buttton and check box
  Open Browser  ${url}    ${browser}
  Maximize Browser Window
  Set Selenium Speed    2seconds 
  #Select Checkbox    checkbox_0
  Radio and checkbox
  Close Browser

*** Keywords ***
Radio and checkbox
     Click Element  //label[contains(text(),'Eté')]
    Select Radio Button    6    Oui

    Unselect Checkbox    checkbox_0