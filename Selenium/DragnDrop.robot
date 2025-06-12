*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/drag_and_drop

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']    
        Sleep    2s
        
        Close Browser