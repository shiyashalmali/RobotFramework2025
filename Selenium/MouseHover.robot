*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in/
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    2s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    xpath://a[@id='a-autoid-0-announce']
        Sleep    2s
        Close Browser
        