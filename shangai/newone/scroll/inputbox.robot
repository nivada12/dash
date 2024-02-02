*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${brower}   chrome
${url}      https://demo.nopcommerce.com

*** Test Cases ***
TestingInbox
    Open Browser  ${url}  ${brower}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    //a[contains(text(),'Log in')]
    ${"email_txt"}  set variable       id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    Input Text     ${"email_txt"}    lerepew311@fesgrid.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    Close Browser
*** Keywords ***