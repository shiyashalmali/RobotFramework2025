*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #get the common attribute among the radio buttonss
        ${elements}=        Get WebElements    xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END
        Close Browser

