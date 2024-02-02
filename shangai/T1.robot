**Settings**
Library      SeleniumLibrary
Documentation  Tags in Robot Framework
**Variables**
${url}      https://ekara.ip-label.net/restitution/#/login
${browser}  chrome
**Test Cases**
LoginTest
    [tags]  Smoke
       
        open browser        ${url}      ${browser}
        Maximize Browser Window  
        LoginToApp
        close browser
       
**Keywords**
LoginToApp
        
        sleep     2s
        input text   xpath:/html[1]/body[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/input[1]    asr@ip-label.com 
        input text   xpath:/html[1]/body[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/input[1]  Tunisie2024!
        click element  xpath://*[@id="app"]/div[2]/main/div/div/div[3]/div/div/div/form/button 
        #wait until page contains element  xpath:/html[1]/body[1]/div[1]/div[87]/div[1]/main[1]/div[1]/div[1]/div[1]/span[1]
