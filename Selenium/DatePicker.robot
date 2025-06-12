*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Click Element    id=datetimepicker1
        Sleep    2s
        Click Element    xpath://div[contains(@class,'flatpickr-calendar')]//span[@aria-label='June 9, 2025']


        
        Close Browser
