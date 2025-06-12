*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Page Should Contain Radio Button    xpath://input[@class='radioButton']          timeout=5
        Select Radio Button    radioButton    radio2
        Select Checkbox    xpath://input[@id='checkBoxOption1']
        Close Browser

