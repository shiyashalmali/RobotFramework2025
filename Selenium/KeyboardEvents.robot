*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/key_presses
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Press Keys    xapth://input[@id='target']    SPACE
        Sleep    2s
        Press Keys    xapth://input[@id='target']    CTRL
        Sleep    2s
        Press Keys    xapth://input[@id='target']    SHIFT
        Sleep    2s
        Close Browser
        