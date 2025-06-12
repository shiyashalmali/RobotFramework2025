*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}       https://the-internet.herokuapp.com/tables
${BROWSER}   Firefox

*** Test Cases ***
Table
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

    Log To Console    \n--- Example 1 Table Data ---
    @{rows}=    Get WebElements    xpath=//table[@id='table1']/tbody/tr
    FOR    ${row}    IN    @{rows}
        ${text}=    Get Text    ${row}
        Log To Console    ${text}
    END


    ${last_name}=    Get Text    xpath=//table[@id='table1']/tbody/tr[4]/td[1]
    Log To Console    \n ${last_name}


    ${first_name}=    Get Text    xpath=//table[@id='table2']/tbody/tr[1]/td[2]
    Log To Console     \n ${first_name}



    Sleep    2s
    Close Browser