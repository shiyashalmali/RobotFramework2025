*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://jqueryui.com/datepicker/
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Select Frame    xpath://iframe[@class='demo-frame']
        Sleep    2s
        Current Frame Should Contain    Date
        Click Element    id:datepicker
        Sleep    2s
        Click Element    xpath://a[normalize-space()='10']
        Sleep    2s
        Close Browser
        