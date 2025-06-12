*** Settings ***
Library     SeleniumLibrary
Library     XML

*** Variables ***
${browser}      Edge
${url}          https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F

*** Keywords ***
Launch App
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    
Close App
    Close Browser
    
Open Login Page
    Go To    ${url}
    
Set Email
        [Arguments]     ${username}
        Input Text    xpath://input[@id='Email']    ${username}
        

Set Password
        [Arguments]     ${password}
        Input Text    xpath://input[@id='Password']    ${password}
       
Click Login
        Click Element    xpath://button[@type='submit']

Error Message Should be Visible
        Element Text Should Be    xpath://span[@id='Email-error']    Wrong email