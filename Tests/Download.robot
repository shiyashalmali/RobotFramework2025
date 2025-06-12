
*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/download


*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Test.txt']
        Sleep    2s
        ${files}=        List Files In Directory    C:/Users/shssh/Downloads
        List Should Contain Value   ${files}    Test.txt
        Sleep    2s
        Close Browser


