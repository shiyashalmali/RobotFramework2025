*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}        ${browser}
        Go To        https://google.com
        Sleep    2s
        Go Back
        Sleep    2s
        Reload Page
        Close Browser


