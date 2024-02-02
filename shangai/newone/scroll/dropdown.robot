*** Settings ***

Library       SeleniumLibrary


*** Variables ***

${browser}   chrome
${url}       https://www.supcom.tn/formulaire/formulaire-test-1

*** Test Cases ***
Test list
  Open Browser  ${url}    ${browser}
  Maximize Browser Window
  #Select From List By Label    5       Femme
  Select From List By Index    5       1
  Close Browser