*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}      https://demoqa.com/select-menu

*** Test Cases ***
Multiple Check Box
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements} =        Get WebElements    xpath://select[@id='cars']
        FOR    ${element}    IN    @{elements}
            Select From List By Value    xpath://select[@id='cars']  volvo
            Sleep    2s
            Select From List By Index    xpath://select[@id='cars']  2
            Sleep    2s
            Select From List By Label    xpath://select[@id='cars']  Audi
            Sleep       2s
        END
        Close Browser