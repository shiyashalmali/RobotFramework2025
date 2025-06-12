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

#        right click
        Open Context Menu    //a[normalize-space()='Mobiles']
        Sleep    2s
#        double click
        Double Click Element    //a[normalize-space()="Today's Deals"]
        Sleep    2s


        Close Browser