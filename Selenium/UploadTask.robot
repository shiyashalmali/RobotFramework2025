
*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://demoqa.com/upload-download
${path}     C:\\Users\\shssh\\Pictures\\Screenshots\\Screenshot.png

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Choose File    //input[@id='uploadFile']    ${path}
        Sleep    2s
        Click Element    xpath://a[@id='downloadButton']
        Sleep    2s
        Close Browser

