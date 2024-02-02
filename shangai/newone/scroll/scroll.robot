*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
scrolltest
    Open Browser   https://www.countries-ofthe-world.com/flags-of-the-world.html                 Chrome
    Maximize Browser Window
    #Execute Javascript        window.scrollTo(0,1500)
    #Scroll Element Into View    //*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[87]/td[1]/img
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight)
    Sleep    5
    Execute Javascript     window.scrollTo(0,-document.body.scrollHeight)
    Close Browser