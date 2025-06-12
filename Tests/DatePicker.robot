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


#        Click Element    xpath://input[@id='datetimepicker2']
#        Sleep    2s
#        Click Element    xpath://div[@class='flatpickr-calendar hasTime animate arrowTop arrowLeft open']//span[@aria-label='June 2, 2025'][normalize-space()='2']
#        Sleep    2s


        
        Close Browser
